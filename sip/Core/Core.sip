%Module(name=PyCTK.Core, call_super_init=True, keyword_arguments="Optional")
%DefaultSupertype sip.simplewrapper
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType

typedef int size_t;

%Import QtCore/QtCoremod.sip

%Include ctkBackTrace.sip
//%Include ctkBinaryFileDescriptor.sip
%Include ctkBooleanMapper.sip
%Include ctkCallback.sip

%Include ctkUtils.sip