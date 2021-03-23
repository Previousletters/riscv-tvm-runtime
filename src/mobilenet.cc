#include <dlpack/dlpack.h>
#include <tvm/runtime/module.h>
#include <tvm/runtime/registry.h>
#include <tvm/runtime/packed_func.h>

#include <fstream>
#include <iterator>
#include <algorithm>
#include <iostream>

#include "model.hh"

int main(int argc, char** argv)
{
    tvm_model model("mobilenet", 1);
    std::string* model_path = model.getPath();
    std::cout << model_path[0] << "\n" << model_path[1] << "\n" << model_path[2] << "\n";
    model.modLoad();
    tvm::runtime::Module mod_dylib;
    std::string json_data;
    std::string params_data;
    model.getModel(mod_dylib, json_data, params_data);
    std::cout << "Success get model\n";

    TVMByteArray params_arr;
    params_arr.data = params_data.c_str();
    params_arr.size = params_data.length();
    std::cout << "Success input params\n";

    int dtype_code = kDLFloat;
    int dtype_bits = 32;
    int dtype_lanes = 1;
    int device_type = kDLCPU;
    int device_id = 0;

    tvm::runtime::Module mod = (*tvm::runtime::Registry::Get("tvm.graph_runtime.create"))
            (json_data, mod_dylib, device_type, device_id);
    std::cout << "Success create runtime\n";

    DLTensor *x;
    int in_ndim = 4;
    int64_t in_shape[4] = {1, 224, 224, 3};
    TVMArrayAlloc(in_shape, in_ndim, dtype_code, dtype_bits, dtype_lanes, device_type, device_id, &x);

    float* data = model.get_image("../res/cat.bin");
    // x为之前的张量类型 data为之前开辟的浮点型空间
    memcpy(x->data, &data[0], 224 * 224 * 3 * sizeof(float));

    tvm::runtime::PackedFunc set_input = mod.GetFunction("set_input");
    set_input("0", x);

    // get the function from the module(load patameters)
    tvm::runtime::PackedFunc load_params = mod.GetFunction("load_params");
    load_params(params_arr);

    DLTensor* y;
    int out_ndim = 2;
    int64_t out_shape[2] = {1, 1001};
    TVMArrayAlloc(out_shape, out_ndim, dtype_code, dtype_bits, dtype_lanes, device_type, device_id, &y);

    // get the function from the module(run it)
    tvm::runtime::PackedFunc run = mod.GetFunction("run");

    // get the function from the module(get output data)
    tvm::runtime::PackedFunc get_output = mod.GetFunction("get_output");

    run();
    get_output(0, y);

    // 将输出的信息打印出来
    auto result = static_cast<float*>(y->data);
    for (int i = 0; i < 10; i++)
    {
        std::cout<<result[i]<<", " << i << std::endl;
    }

    std::cout << "Success!\n";
    return 0;
}
