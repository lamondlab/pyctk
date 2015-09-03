QT       += widgets

TARGET = Widgets
TEMPLATE = lib

win32 {
    CONFIG += staticlib 
}

DEFINES += CTK_LIBRARY

SOURCES += ctkPopupWidget.cpp \
    ctkBasePopupWidget.cpp \
    ctkActionsWidget.cpp \
    ctkAddRemoveComboBox.cpp \

HEADERS += ctkPopupWidget.h\
    ctkBasePopupWidget_p.h \
    ctkBasePopupWidget.h \
    ctkPopupWidget_p.h \
    ctkExport.h \
    ctkActionsWidget.h \
    ctkAddRemoveComboBox.h \

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