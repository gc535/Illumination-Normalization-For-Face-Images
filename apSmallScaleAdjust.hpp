#ifndef apSmallScaleAdjust_h
#define apSmallScaleAdjust_h

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <cstdio>
#include <cmath>
#include <string>
#include "apmatrix.h"

unsigned char apFindThreshold(IplImage *src);
char apFindThreshold_data(char *imageData,int size);
int apSortMid( int *p, int n);
void apMidFilter(IplImage *src,IplImage *dst,int x,int y );
void apMidFilter_Thre(IplImage *src,IplImage *dst,int threshold);


#endif