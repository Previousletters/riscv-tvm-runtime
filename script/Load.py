import numpy as np
import tvm
from tvm import relay

def load_model(model_path, shape_dict):
	input_name = list(shape_dict.keys())[0]
	model_type = model_path.split(".")[-1]

	if model_type == 'onnx':
	    import onnx

	    onnx_model = onnx.load(model_path)
	    # return = mod, params
	    return relay.frontend.from_onnx(onnx_model, shape_dict)
	elif model_type == 'pb':
		import tensorflow as tf

	elif model_type == 'tflite':
		dtype_dict = {input_name: 'float32'}
		tflite_model_buf = open(model_path, "rb").read()

	    # Using the buffer, transform into a tflite model python object
		try:
			import tflite
			tflite_model = tflite.Model.GetRootAsModel(tflite_model_buf, 0)
		except AttributeError:
			import tflite.Model
			tflite_model = tflite.Model.Model.GetRootAsModel(tflite_model_buf, 0)

		return relay.frontend.from_tflite(tflite_model, shape_dict=shape_dict, dtype_dict=dtype_dict)
