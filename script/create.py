from Load import *
import tvm
from tvm import relay
from model import *

NAME            = "mobilenet_v1.tflite"
LABEL_NAME      = "input"
LABEL_SHAPE     = [1, 224, 224, 3]

OUTPUT_NAME     = ""

def compile_nn_model(model_path, shape_dict, model_name):
    mod, params = load_model(model_path, shape_dict)
    disable_fusion = relay.build_config(disabled_pass={"FuseOps"})
    with disable_fusion:
        graph, lib, params = relay.build_module.build(mod, target="llvm", params=params)

    target_dir = '../model'
    if model_name == "":
        model_name = model_path.replace("../nn/", "").rsplit(".")[0]

    with open(target_dir + '/' + model_name + '.ll', 'w') as _f:
        _f.write(lib.get_source())
    with open(target_dir + '/' + model_name + '.graph', 'w') as _f:
        _f.write(graph)
    with open(target_dir + '/' + model_name + '.params', 'wb') as _f:
        _f.write(relay.save_param_dict(params))
    print("save finish")

if __name__ == "__main__":
    model_path = "../nn/%s"%NAME
    shape_dict = {LABEL_NAME: LABEL_SHAPE}
    compile_nn_model(model_path, shape_dict, OUTPUT_NAME)
