#ifndef _IMAGE_HH_
#define _IMAGE_HH_

#include <opencv2/opencv.hpp>

class Data
{
    private:
        int save;
        int *shape;
        std::string data_type;
        cv::Mat img_mat;
        float *img_float;
    public:
        Data(std::string input_path);
        cv::Mat get_image();
        int* get_shape();
        float* get_float();
        void pre_process(int img_width, int img_height);
        void set_float(int normalize, std::string data_type="CHW");
        void save_binary(std::string name);
};

#endif
