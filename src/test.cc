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
    tvm_model model("model_pb", 0);
    std::string * paths = model.getPath();
    model.modLoad();
    tvm::runtime::Module mod_lib;
    std::string json_data;
    std::string params_data;
    model.getModel(mod_lib, json_data, params_data);
    std::cout << model.getPath()[0] << std::endl;
    std::cout << model.getPath()[1] << std::endl;
    std::cout << model.getPath()[2] << std::endl;
    std::cout << json_data << std::endl;
    float* data = model.get_image("../res/cat.bin");
    std::cout << data[0] << "\t" << data[1] << std::endl;
    return 0;
}
