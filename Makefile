GXX=g++
GCC=gcc
CXXFLAG=-std=c++11 

IDIR=./
INCLUDE=-I$(IDIR)

CVLINK=/usr/local/lib/
LINK= -L$(CVLINK) -lopencv_highgui -lopencv_imgcodecs -lopencv_core


_C_SRC:=apmatrix.c
_C_OBJ:=apmatrix.o

_CPP_SRC:=main.cpp apSmallScaleAdjust.cpp apmyDCT.cpp apLTV.cpp apImgProcess.cpp
_CPP_OBJ:=$(_CPP_SRC:.cpp=.o)

ILLUMINATION=./illumination

.PHONY: all illumination clean
all: illumination

illumination: $(ILLUMINATION)
$(ILLUMINATION): $(_CPP_OBJ) $(_C_OBJ) 
	$(GXX) -o $@ $^ $(CFLAGS) $(CXXFLAG) $(INCLUDE) $(LINK) 


%.o: %.cpp
	$(GXX) -c -g -o $@ $< $(CXXFLAG) $(INCLUDE)


%.o: %.c
	$(GCC) -c -w -o $@ $< 

clean:
	rm -f $(ILLUMINATION) *.o
