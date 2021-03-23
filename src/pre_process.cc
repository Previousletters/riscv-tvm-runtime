#include "image.hh"

int main(int argc, char** argv)
{
    std::string image_name = "cat.jpg";
    std::string output_name = "cat.bin";
    std::string res_path = "../res/";
    Data img(res_path + image_name);
    img.pre_process(224, 224);
    std::cout << img.get_shape()[0] << "\t" << img.get_shape()[1] << std::endl;
    img.set_float(1, "HWC");
    img.save_binary(res_path + output_name);
    return 0;
}
