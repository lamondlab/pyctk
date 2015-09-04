QT       += widgets

TARGET = Widgets
TEMPLATE = lib

win32 {
    CONFIG += staticlib 
}

DEFINES += CTK_LIBRARY

SOURCES += ctkPopupWidget.cpp \
    ctkActionsWidget.cpp \
    ctkAddRemoveComboBox.cpp \
    ctkAxesWidget.cpp \
    ctkBasePopupWidget.cpp \
    ctkButtonGroup.cpp \
    ctkCheckableComboBox.cpp \
    ctkCheckableModelHelper.cpp \    
    ctkCheckablePushButton.cpp \
    ctkPushButton.cpp \
    ctkCheckableHeaderView.cpp \
    ctkCheckBoxPixmaps.cpp \
    ctkCheckBox.cpp \
    ctkProxyStyle.cpp \
    ctkCollapsibleButton.cpp \
    ctkCollapsibleGroupBox.cpp \
    ctkColorDialog.cpp \
    ctkColorPickerButton.cpp \
    ctkComboBox.cpp \

HEADERS += ../ctkExport.h \
    ../ctkPimpl.h \
    ctkActionsWidget.h \
    ctkAddRemoveComboBox.h \
    ctkAxesWidget.h \
    ctkBasePopupWidget_p.h \
    ctkBasePopupWidget.h \
    ctkButtonGroup.h \
    ctkCheckableComboBox.h \
    ctkCheckableModelHelper.h \
    ctkCheckablePushButton.h \
    ctkPopupWidget.h\
    ctkPopupWidget_p.h \
    ctkPushButton_p.h \
    ctkPushButton.h \
    ctkCheckableHeaderView.h \
    ctkCheckBoxPixmaps.h \
    ctkCheckBox.h \
    ctkProxyStyle.h \
    ctkCollapsibleButton.h \
    ctkCollapsibleGroupBox.h \
    ctkColorDialog.h \
    ctkColorPickerButton.h \
    ctkComboBox.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}

RESOURCES += \
    Resources/ctkWidgets.qrc

FORMS += \
    Resources/UI/ctkAddRemoveComboBox.ui \
    Resources/UI/ctkDateRangeWidget.ui \
    Resources/UI/ctkErrorLogWidget.ui \
    Resources/UI/ctkMaterialPropertyWidget.ui \
    Resources/UI/ctkModalityWidget.ui \
    Resources/UI/ctkPathListButtonsWidget.ui \
    Resources/UI/ctkRangeWidget.ui \
    Resources/UI/ctkScreenshotDialog.ui \
    Resources/UI/ctkSettingsDialog.ui \
    Resources/UI/ctkSliderWidget.ui \
    Resources/UI/ctkTemplateWidget.ui \
    Resources/UI/ctkThumbnailLabel.ui \
    Resources/UI/ctkThumbnailListWidget.ui \
    Resources/UI/ctkWorkflowGroupBox.ui
