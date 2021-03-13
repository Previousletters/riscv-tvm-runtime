#include <dlpack/dlpack.h>
#include <tvm/runtime/module.h>
#include <tvm/runtime/registry.h>
#include <tvm/runtime/packed_func.h>

#include <fstream>
#include <iterator>
#include <algorithm>
#include <iostream>

#include <opencv2/opencv.hpp>

void get_CHW(float *data, std::string img_path)
{
    cv::Mat image = cv::imread(img_path);
    cv::Mat frame;
    cv::Mat input;

    cv::cvtColor(image, frame, cv::COLOR_BGR2RGB);
    cv::resize(frame, input,  cv::Size(224,224));

    assert(data && !frame.empty());
    unsigned int volChl = 128 * 128;

    for(int c = 0; c < 3; ++c)
    {
        for (unsigned j = 0; j < volChl; ++j)
            data[c*volChl + j] = static_cast<float>(float(frame.data[c*volChl + j]) / 255.0);
    }
}


int main(int argc, char** argv)
{
    std::cout << "Action 1" << std::endl;
    tvm::runtime::Module mod_dylib = tvm::runtime::Module::LoadFromFile("/home/shenao/Learning/tvm/2021-work/model/libmodel_pb.so");
    std::cout << "Action 2" << std::endl;

    std::ifstream json_in("../model/model_pb.graph", std::ios::in);
    std::string json_data((std::istreambuf_iterator<char>(json_in)), std::istreambuf_iterator<char>());
    json_in.close();

    std::ifstream params_in("../model/model_pb.params", std::ios::binary);
    std::string params_data((std::istreambuf_iterator<char>(params_in)), std::istreambuf_iterator<char>());
    params_in.close();
    
    TVMByteArray params_arr;
    params_arr.data = params_data.c_str();
    params_arr.size = params_data.length();

    int dtype_code = kDLFloat;
    int dtype_bits = 32;
    int dtype_lanes = 1;
    int device_type = kDLCPU;
    int device_id = 0;

    tvm::runtime::Module mod = (*tvm::runtime::Registry::Get("tvm.graph_runtime.create"))
            (json_data, mod_dylib, device_type, device_id);

    DLTensor *x;
    int in_ndim = 4;
    int64_t in_shape[4] = {1, 224, 224, 3};
    float data[224*224*3];
    TVMArrayAlloc(in_shape, in_ndim, dtype_code, dtype_bits, dtype_lanes, device_type, device_id, &x);

    get_CHW(data, "../../2020-work/img/lemon.png");
    
    // x为之前的张量类型 data为之前开辟的浮点型空间
    memcpy(x->data, &data, 224 * 224 * 3 * sizeof(float));

    tvm::runtime::PackedFunc set_input = mod.GetFunction("set_input");
    set_input("0", x);

    // get the function from the module(load patameters)
    tvm::runtime::PackedFunc load_params = mod.GetFunction("load_params");
    load_params(params_arr);

    DLTensor* y;
    int out_ndim = 2;
    int64_t out_shape[2] = {1, 1};
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
