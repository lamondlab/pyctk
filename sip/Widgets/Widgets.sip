%Module(name=PyCTK.Widgets, call_super_init=True, keyword_arguments="Optional")
%DefaultSupertype sip.simplewrapper
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType

%Import QtGui/QtGuimod.sip
%Import QtWidgets/QtWidgetsmod.sip

%Import Core/Core.sip

%Include ctkActionsWidget.sip
%Include ctkAddRemoveComboBox.sip
%Include ctkAxesWidget.sip
%Include ctkButtonGroup.sip
%Include ctkCheckableComboBox.sip
%Include ctkCheckableHeaderView.sip
%Include ctkCheckableModelHelper.sip
%Include ctkCheckablePushButton.sip
%Include ctkCheckBox.sip
%Include ctkCheckBoxPixmaps.sip
%Include ctkCollapsibleButton.sip
%Include ctkCollapsibleGroupBox.sip
%Include ctkColorDialog.sip
%Include ctkColorPickerButton.sip
%Include ctkComboBox.sip

%Include ctkPopupWidget.sip
//%Include ctkProxyStyle.sip
%Include ctkPushButton.sip