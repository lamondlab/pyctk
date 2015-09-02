QT       += widgets

TARGET = Widgets
TEMPLATE = lib

win32 {
    CONFIG += staticlib 
}

DEFINES += CTK_LIBRARY

SOURCES += ctkPopupWidget.cpp \
    ctkBasePopupWidget.cpp \
    ctkActionsWidget.cpp

HEADERS += ctkPopupWidget.h\
    ctkBasePopupWidget_p.h \
    ctkBasePopupWidget.h \
    ctkPopupWidget_p.h \
    ctkExport.h \
    ctkActionsWidget.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}