#include"model.hh"

tvm_model::tvm_model(std::string name, int riscv)
{
    this->tvm_model_path = new std::string[3];
    std::string suffix;
    if(riscv) suffix = "_riscv.so";
    else suffix = ".so";
    this->tvm_model_path[0] = model_path + "lib" + name + suffix;
    this->tvm_model_path[1] = model_path + name + ".graph";
    this->tvm_model_path[2] = model_path + name + ".params";
}

void tvm_model::modLoad()
{
    this->mod_lib = tvm::runtime::Module::LoadFromFile(tvm_model_path[0].c_str());

    std::ifstream json_in(tvm_model_path[1].c_str(), std::ios::in);
    std::string json((std::istreambuf_iterator<char>(json_in)), std::istreambuf_iterator<char>());
    json_in.close();
    this->json_data = json;

    std::ifstream params_in(tvm_model_path[2].c_str(), std::ios::binary);
    std::string params((std::istreambuf_iterator<char>(params_in)), std::istreambuf_iterator<char>());
    params_in.close();
    this->params_data = params;
}

std::string * tvm_model::getPath()
{
    return this->tvm_model_path;
}

void tvm_model::getModel(tvm::runtime::Module &mod, std::string &json, std::string &params)
{
    mod = this->mod_lib;
    json = this->json_data;
    params = this->params_data;
}
