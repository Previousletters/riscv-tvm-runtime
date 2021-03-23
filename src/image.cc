#include <iostream>
#include <fstream>
#include <string.h>
#include "image.hh"

Data::Data(std::string input_path)
{
    img_mat = cv::imread(input_path);
    data_type = "CHW";
    save = 0;
    this->shape = new int[2];
    this->shape[0] = img_mat.size().width;
    this->shape[1] = img_mat.size().height;
    this->img_float = new float[this->shape[0]*this->shape[1]*3];
}

int* Data::get_shape()
{
    return this->shape;
}

float* Data::get_float()
{
    return this->img_float;
}

cv::Mat Data::get_image()
{
    return this->img_mat;
}

void Data::pre_process(int img_width, int img_height)
{
    this->shape[0] = img_width;
    this->shape[1] = img_height;
    cv::cvtColor(this->img_mat, this->img_mat, cv::COLOR_BGR2RGB);
    cv::resize(this->img_mat, this->img_mat, cv::Size(this->shape[0], this->shape[1]));
}

void Data::set_float(int normalize, std::string data_type)
{
    this->data_type = data_type;
    std::cout << "Input data type: " << this->data_type << std::endl;
    unsigned int volChl = this->shape[0] * this->shape[1];
    this->img_float = new float[this->shape[0] * this->shape[1] * 3];
    this->save = 1;
    
    if (this->data_type=="CHW")
    {
        for(int c = 0; c < 3; ++c)
        {
            for (unsigned j = 0; j < volChl; ++j)
            {
                if (normalize)
                    this->img_float[c*volChl + j] = static_cast<float>(float(img_mat.data[c*volChl + j]) / 255.0);
                else this->img_float[c*volChl + j] = static_cast<float>(float(img_mat.data[c*volChl + j]));
            }
        }
    }
    else if (this->data_type=="HWC")
    {
        for (unsigned j = 0; j < volChl; ++j)
        {
            for(int c = 0; c < 3; ++c)
            {
                if (normalize)
                    this->img_float[c*volChl + j] = static_cast<float>(float(img_mat.data[c*volChl + j]) / 255.0);
                else this->img_float[c*volChl + j] = static_cast<float>(float(img_mat.data[c*volChl + j]));
            }
        }
    }
}

void Data::save_binary(std::string name)
{
    std::ofstream f_out(name, std::ios::binary);
    int len = this->shape[0]*this->shape[1]*3;
    for (int i = 0; i < len; i++)
    {
        f_out.write((char*)&this->img_float[i], sizeof(float));
    }
    f_out.close();
}
