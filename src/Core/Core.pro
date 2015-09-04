TARGET = Core
TEMPLATE = lib

win32 {
    CONFIG += staticlib 
}

DEFINES += CTK_LIBRARY

SOURCES += ctkBackTrace.cpp \
    # ctkBinaryFileDescriptor.cpp \
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
    ctkScopedCurrentDir.cpp \
    ctkSetName.cpp \
    ctkUtils.cpp \
    ctkValueProxy.cpp \
    ctkWorkflow.cpp \
    ctkWorkflowStep.cpp \
    ctkAbstractFactory.tpp \
    ctkAbstractFileBasedFactory.tpp \
    ctkAbstractLibraryFactory.tpp \
    ctkAbstractObjectFactory.tpp \
    ctkAbstractPluginFactory.tpp \
    # ctkAbstractQObjectFactory.tpp \

HEADERS += ../ctkExport.h \
    ../ctkPimpl.h \
    ctkBackTrace.h \
    # ctkBinaryFileDescriptor.h \
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
    ctkScopedCurrentDir.h \
    ctkSetName.h \
    ctkSingleton.h \
    ctkUtils.h \
    ctkValueProxy.h \
    ctkWorkflow.h \
    ctkWorkflow_p.h \
    ctkWorkflowStep.h \
    ctkWorkflowStep_p.h \
    ctkWorkflowTransitions.h \
    ctkAbstractFactory.h \
    ctkAbstractFileBasedFactory.h \
    ctkAbstractLibraryFactory.h \
    ctkAbstractObjectFactory.h \
    ctkAbstractPluginFactory.h \
    # ctkAbstractQObjectFactory.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}
