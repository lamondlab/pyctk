#-------------------------------------------------
#
# Project created by QtCreator 2015-08-20T11:33:53
#
#-------------------------------------------------

QT       += widgets

TARGET = CTK
TEMPLATE = lib

DEFINES += CTK_LIBRARY

SOURCES += ctkPopupWidget.cpp \
    ctkBasePopupWidget.cpp

HEADERS += ctkPopupWidget.h\
        ctkpopupwidget_global.h \
    ctkBasePopupWidget_p.h \
    ctkBasePopupWidget.h \
    ctkPopupWidget_p.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32 {
	CONFIG += staticlib
}
