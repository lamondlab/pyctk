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
	ctkCommandLineParser.cpp \

HEADERS += ctkUtils.h \
	ctkBackTrace.h \
	#ctkBinaryFileDescriptor.h \
	ctkBooleanMapper.h \
	ctkCallback.h \
	ctkCommandLineParser.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}