TEMPLATE = app

TARGET = qclitest

CONFIG += qt warn_on release
QT += core opengl

DESTDIR = bin
OBJECTS_DIR = obj
MOC_DIR = obj

LIBS += -L../libqcli/bin -lqcli
INCLUDEPATH += ../libqcli/src
QMAKE_LFLAGS += -Wl,-R,\'../../libqcli/bin\'

QMAKE_CXX = g++-4.7 # clang++
QMAKE_CXXFLAGS = -std=c++11 -march=native -O3 -fomit-frame-pointer -fPIC

SOURCES += main.cpp
