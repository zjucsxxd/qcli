TEMPLATE = lib
VERSION = 0.1.0

CONFIG += qt warn_on release
QT += core opengl

DESTDIR = bin
OBJECTS_DIR = obj
MOC_DIR = obj

INCLUDEPATH += src/

INCLUDEPATH += /usr/local/cuda/include  # Default NVIDIA CUDA SDK include path
INCLUDEPATH += /opt/AMDAPP/include      # Default AMD APP SDK include path

LIBS += -lOpenCL

QMAKE_CXX = g++
#QMAKE_CXX = clang++

QMAKE_CXXFLAGS = -std=c++11 -march=native -O3 -fPIC

HEADERS += \
    src/opencl/context.h \
    src/opencl/devicemanager.h \
    src/util/utils.h \
    src/ifmt.h \
    src/image.h \
    src/QCLI

SOURCES += \
    src/opencl/context.cpp \
    src/opencl/devicemanager.cpp \
    src/util/utils.cpp \
    src/ifmt.cpp \
    src/image.cpp
