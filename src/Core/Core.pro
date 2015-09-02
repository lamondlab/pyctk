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
    ctkDependencyGraph.cpp \
    ctkErrorLogLevel.cpp \
    ctkErrorLogTerminalOutput.cpp \
    ctkErrorLogAbstractMessageHandler.cpp \

HEADERS += ctkUtils.h \
    ctkBackTrace.h \
    #ctkBinaryFileDescriptor.h \
    ctkBooleanMapper.h \
    ctkCallback.h \
    ctkCommandLineParser.h \
    ctkDependencyGraph.h \
    ctkErrorLogLevel.h \
    ctkErrorLogTerminalOutput.h \
    ctkErrorLogAbstractMessageHandler.h \
    ctkErrorLogContext.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}