#-------------------------------------------------
#
# Project created by QtCreator 2015-08-20T11:33:53
#
#-------------------------------------------------

TARGET = Core
TEMPLATE = lib

win32 {
	CONFIG += staticlib	
}

DEFINES += CTK_LIBRARY

SOURCES += ctkUtils.cpp

HEADERS += ctkUtils.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}