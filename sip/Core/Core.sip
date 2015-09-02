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

%Include ctkUtils.sip

typedef std::list<int> intListType;