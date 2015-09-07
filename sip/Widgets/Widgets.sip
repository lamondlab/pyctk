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
%Include ctkCompleter.sip
%Include ctkConsole.sip
%Include ctkCoordinatesWidget.sip
%Include ctkCrosshairLabel.sip
%Include ctkDateRangeWidget.sip
%Include ctkDirectoryButton.sip
%Include ctkDoubleRangeSlider.sip
%Include ctkDoubleSlider.sip
%Include ctkDoubleSpinBox.sip
%Include ctkDynamicSpacer.sip
%Include ctkErrorLogModel.sip
%Include ctkErrorLogWidget.sip
%Include ctkExpandableWidget.sip
%Include ctkExpandButton.sip
%Include ctkFileDialog.sip
%Include ctkFittedTextBrowser.sip
%Include ctkFlatProxyModel.sip
%Include ctkFlowLayout.sip
%Include ctkFontButton.sip
%Include ctkHistogram.sip
%Include ctkIconEnginePlugin.sip

%Include ctkPopupWidget.sip
//%Include ctkProxyStyle.sip
%Include ctkPushButton.sip

%Include ctkPixmapIconEngine.sip

%Include ctkRangeSlider.sip

%Include ctkSizeGrip.sip

%Include ctkTransferFunction.sip
%Include ctkTransferFunctionRepresentation.sip