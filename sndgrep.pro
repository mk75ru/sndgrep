TEMPLATE = lib
CONFIG += dynamiclib plugin
CONFIG += qt

LIBS += -lfftw3

HEADERS += \
	sndgrep.h  \

SOURCES += \
        sndgrep.c \



include(../root.pri)


TARGET = $${PRJ_LIB}/sndgrep


VPATH += \
        src \

INCLUDEPATH += \
        src \
