#ifndef _MODEL_HH_
#define _MODEL_HH_

#include<tvm/runtime/module.h>

#include<fstream> 
#include<iostream>
#include<string.h>

class tvm_model
{
    private:
        std::string model_path = "../model/";
        tvm::runtime::Module mod_lib;
        std::string json_data;
        std::string params_data;
        std::string *tvm_model_path;
    public:
        tvm_model(std::string name, int riscv);
        std::string *getPath();
        void modLoad();
        void getModel(tvm::runtime::Module &mod, std::string &json, std::string &params);
};

#endif
