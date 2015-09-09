/*=========================================================================

  Library:  PyCTK
  Filename: Core.sip

  Copyright (c) 2015 Lamond Lab

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=========================================================================*/

%Module(name=PyCTK.Core, call_super_init=True, keyword_arguments="Optional")
%DefaultSupertype sip.simplewrapper
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType

typedef int size_t;

%Import QtCore/QtCoremod.sip

%Include list.sip

%Include ctkBackTrace.sip
//%Include ctkBinaryFileDescriptor.sip
%Include ctkBooleanMapper.sip
%Include ctkCallback.sip
%Include ctkCommandLineParser.sip
%Include ctkDependencyGraph.sip
%Include ctkErrorLogLevel.sip
%Include ctkErrorLogTerminalOutput.sip
%Include ctkErrorLogContext.sip
%Include ctkErrorLogAbstractMessageHandler.sip
%Include ctkErrorLogFDMessageHandler.sip
%Include ctkErrorLogQtMessageHandler.sip
%Include ctkErrorLogStreamMessageHandler.sip
//%Include ctkException.sip
%Include ctkFileLogger.sip
%Include ctkLinearValueProxy.sip
%Include ctkLogger.sip
%Include ctkModelTester.sip
%Include ctkScopedCurrentDir.sip
%Include ctkSetName.sip
%Include ctkUtils.sip
%Include ctkValueProxy.sip
%Include ctkWorkflow.sip
%Include ctkWorkflowStep.sip
%Include ctkWorkflowStepPrivate.sip
%Include ctkWorkflowTransitions.sip

typedef std::list<int> intListType;