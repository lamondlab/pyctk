%Module(name=PyCTK.Widgets, call_super_init=True, keyword_arguments="Optional")
%DefaultSupertype sip.simplewrapper
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType

%Import QtGui/QtGuimod.sip
%Import QtWidgets/QtWidgetsmod.sip

%Import Core/Core.sip

%Include ctkActionsWidget.sip

%Include ctkPopupWidget.sip