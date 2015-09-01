#-------------------------------------------------
#
# Project created by QtCreator 2015-08-20T11:33:53
#
#-------------------------------------------------

QT       += widgets

TARGET = Widgets
TEMPLATE = lib

win32 {
	CONFIG += staticlib	
}

DEFINES += CTK_LIBRARY

SOURCES += ctkPopupWidget.cpp \
    ctkBasePopupWidget.cpp \

HEADERS += ctkPopupWidget.h\
    ctkBasePopupWidget_p.h \
    ctkBasePopupWidget.h \
    ctkPopupWidget_p.h \
    ctkExport.h \

unix {
    target.path = /usr/lib
    INSTALLS += target
}