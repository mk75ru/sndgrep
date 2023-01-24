TEMPLATE = lib
CONFIG += dynamiclib plugin
CONFIG += qt

LIBS += -lfftw

HEADERS += \
	sndgrep.h  \

SOURCES += \
	sndgrep.c


include(../root.pri)


TARGET = $${PRJ_LIB}/sndgrep


VPATH += \
	./ \

INCLUDEPATH += \
	./ \
