# ===========================================================================
#
#   Library:  PyCTK
#   Filename: Core.pro
#
#   Copyright (c) 2015 Lamond Lab
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0.txt
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
# ===========================================================================

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
