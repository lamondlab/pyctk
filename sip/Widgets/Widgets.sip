/*=========================================================================

  Library:  PyCTK
  Filename: Widgets.sip

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

%Module(name=PyCTK.Widgets, call_super_init=True, keyword_arguments="Optional")
%DefaultSupertype sip.simplewrapper
%DefaultMetatype PyQt5.QtCore.pyqtWrapperType

%Import QtGui/QtGuimod.sip
%Import QtWidgets/QtWidgetsmod.sip
%Import QtXml/QtXmlmod.sip

%Import Core/Core.sip

%ModuleHeaderCode
#include "ctkWidgets.h"
%End

%InitialisationCode
initCtkWidgetsResources();
%End

%Include ctkActionsWidget.sip
%Include ctkAddRemoveComboBox.sip
%Include ctkAxesWidget.sip
%Include ctkBasePopupWidget.sip
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
%Include ctkLanguageComboBox.sip
%Include ctkLayoutFactory.sip
%Include ctkLayoutManager.sip
%Include ctkLayoutViewFactory.sip
%Include ctkMaterialPropertyPreviewLabel.sip
%Include ctkMaterialPropertyWidget.sip
%Include ctkMatrixWidget.sip
%Include ctkMenuButton.sip
%Include ctkMenuComboBox.sip
%Include ctkMessageBox.sip
%Include ctkModalityWidget.sip
%Include ctkPathLineEdit.sip
%Include ctkPathListButtonsWidget.sip
%Include ctkPathListWidget.sip
%Include ctkPopupWidget.sip
%Include ctkPushButton.sip
%Include ctkQImageView.sip
%Include ctkRangeSlider.sip
%Include ctkRangeWidget.sip
%Include ctkScreenshotDialog.sip
%Include ctkSearchBox.sip
%Include ctkSettings.sip
%Include ctkSettingsDialog.sip
%Include ctkSettingsPanel.sip
%Include ctkSizeGrip.sip
%Include ctkSliderWidget.sip
%Include ctkTemplateWidget.sip
%Include ctkTestApplication.sip
%Include ctkThumbnailLabel.sip
%Include ctkThumbnailListWidget.sip
%Include ctkToolTipTrapper.sip
%Include ctkTransferFunction.sip
%Include ctkTransferFunctionBarsItem.sip
%Include ctkTransferFunctionControlPointsItem.sip
%Include ctkTransferFunctionGradientItem.sip
%Include ctkTransferFunctionItem.sip
%Include ctkTransferFunctionRepresentation.sip
%Include ctkTransferFunctionScene.sip
%Include ctkTransferFunctionView.sip
%Include ctkTreeComboBox.sip
%Include ctkWidgetsUtils.sip
%Include ctkWorkflowAbstractPagedWidget.sip
%Include ctkWorkflowButtonBoxWidget.sip
%Include ctkWorkflowGroupBox.sip
%Include ctkWorkflowStackedWidget.sip
%Include ctkWorkflowTabWidget.sip
%Include ctkWorkflowWidget.sip
%Include ctkWorkflowWidgetStep.sip