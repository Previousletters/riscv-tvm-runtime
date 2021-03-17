compile_model = "sine"

model_list = {
        "sine" : ["sine_model.tflite", "dense_4_input", [1, 1]],
        "model_pb" : ["model_pb.tflite", "input_4", [1, 2]],
        "mobilenet": ["mobilenet_v1.tflite", "input", [1, 224, 224, 3]]
        }
