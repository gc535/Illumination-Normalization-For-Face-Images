#ifndef apmyDCT_h
#define apmyDCT_h  

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>

#include "apImgProcess.hpp"
#include "apmatrix.h"


void apmyDCT(IplImage* img);
void apLargeScale_DCT(IplImage* img);
cv::Mat apLargeScale_LogDCT(int height,int width,double **logdata);
double* apLogUC(unsigned char* imageData,int size);
double* apLogUC2(unsigned char* imageData,int size);
double* apLogUC2_strengthened(unsigned char* imageData,int size);
double* apExp1D(double* imageData,int size);
void apExp1D_1(double* imageData,int size);
double* apExp1D_strengthened(double* imageData,int size);
double** apExp2D(double** imageData,int row,int col);



#endif // header guard