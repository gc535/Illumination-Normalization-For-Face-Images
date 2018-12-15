gcc -c  apmatrix.c

g++ -std=c++11 -c main.cpp apImgProcess.cpp apLTV.cpp apmyDCT.cpp apSmallScaleAdjust.cpp -I. -I/usr/local/include/opencv

g++ -std=c++11 -o main main.o apImgProcess.o apLTV.o apmatrix.o apmyDCT.o apSmallScaleAdjust.o -L/usr/local/lib -lopencv_highgui -lopencv_imgcodecs -lopencv_core -I. -I/usr/local/include/opencv
