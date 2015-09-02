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

SOURCES += ctkUtils.cpp \
	ctkBackTrace.cpp \
	#ctkBinaryFileDescriptor.cpp \
	ctkBooleanMapper.cpp \
	ctkCallback.cpp \

HEADERS += ctkUtils.h \
	ctkBackTrace.h \
	#ctkBinaryFileDescriptor.h \
	ctkBooleanMapper.h \
	ctkCallback.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}