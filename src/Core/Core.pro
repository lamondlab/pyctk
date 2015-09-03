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
    ctkErrorLogFDMessageHandler.cpp \
    ctkErrorLogQtMessageHandler.cpp \
    ctkErrorLogStreamMessageHandler.cpp \
    ctkException.cpp \
    ctkFileLogger.cpp \
    ctkLinearValueProxy.cpp \
    ctkLogger.cpp \
    ctkModelTester.cpp \
    ctkValueProxy.cpp \

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
    ctkErrorLogFDMessageHandler.h \
    ctkErrorLogFDMessageHandler_p.h \
    ctkErrorLogQtMessageHandler.h \
    ctkErrorLogStreamMessageHandler.h \
    ctkException.h \
    ctkFileLogger.h \
    ctkLinearValueProxy.h \
    ctkLogger.h \
    ctkModelTester.h \
    ctkPimpl.h \
    ctkValueProxy.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}