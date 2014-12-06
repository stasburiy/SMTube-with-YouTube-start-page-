######################################################################
# Automatically generated by qmake (2.01a) mar feb 21 00:12:34 2012
######################################################################

TEMPLATE = app
QT += network xml
TARGET = smtube
INCLUDEPATH += qtsingleapplication

CONFIG += qt warn_on
CONFIG += release
#CONFIG += debug

CONFIG(release, debug|release):DEFINES += QT_NO_DEBUG_OUTPUT QT_NO_WARNING_OUTPUT

RESOURCES = icons.qrc

DEFINES += NO_SMPLAYER_SUPPORT
DEFINES += YT_USE_SCRIPT
DEFINES += USE_SINGLE_APPLICATION
#DEFINES += YT_DL

isEqual(QT_MAJOR_VERSION, 5) {
    QT += widgets gui
}

contains( DEFINES, YT_USE_SCRIPT ) {
    HEADERS += codedownloader.h
    SOURCES += codedownloader.cpp
    QT += script
} else {
    #DEFINES += YTSIG_STATIC
}

# Input
HEADERS += myborder.h \
           myicon.h \
           retrieveyoutubeurl.h \
           rvu.h \
           ytsig.h \
           searchbox.h \
           ytdataapi.h \
           ytdelegate.h \
           ytdialog.h \
           yttabbar.h \
           lineedit_with_icon.h \
           filechooser.h \
           regions.h \
           configdialog.h \
           version.h \
           about.h \
           fontpref.h

SOURCES += myborder.cpp \
           myicon.cpp \
           retrieveyoutubeurl.cpp \
           rvu.cpp \
           ytsig.cpp \
           searchbox.cpp \
           ytdataapi.cpp \
           ytdelegate.cpp \
           ytdialog.cpp \
           yttabbar.cpp \
           lineedit_with_icon.cpp \
           filechooser.cpp \
           regions.cpp \
           configdialog.cpp \
           version.cpp \
           about.cpp \
           main.cpp

FORMS += configdialog.ui about.ui

TRANSLATIONS = translations/smtube_es.ts \
               translations/smtube_en.ts \
               translations/smtube_ru_RU.ts \
               translations/smtube_lt.ts \
               translations/smtube_ja.ts \
               translations/smtube_zh_CN.ts \
               translations/smtube_eu.ts \
               translations/smtube_pt.ts \
               translations/smtube_hu.ts \
               translations/smtube_pl.ts \
               translations/smtube_gl.ts \
               translations/smtube_el.ts \
               translations/smtube_he_IL.ts \
               translations/smtube_pt_BR.ts \
               translations/smtube_uk.ts \
               translations/smtube_nn_NO.ts \
               translations/smtube_cs.ts \
               translations/smtube_ms_MY.ts \
               translations/smtube_sv.ts \
               translations/smtube_tr.ts \
               translations/smtube_fi.ts \
               translations/smtube_ka.ts \
               translations/smtube_sr.ts \
               translations/smtube_hr.ts \
               translations/smtube_bg.ts \
               translations/smtube_vi.ts \
               translations/smtube_id.ts \
               translations/smtube_ca.ts \
               translations/smtube_ar.ts \
               translations/smtube_de.ts \
               translations/smtube_zh_TW.ts \
               translations/smtube_nqo.ts \
               translations/smtube_et.ts \
               translations/smtube_ko.ts \
               translations/smtube_fr.ts \
               translations/smtube_it.ts \
               translations/smtube_sq_AL.ts \
               translations/smtube_en_GB.ts \
               translations/smtube_sk.ts

unix {
    UI_DIR = .ui
    MOC_DIR = .moc
    OBJECTS_DIR = .obj

    DEFINES += TRANSLATION_PATH=$(TRANSLATION_PATH)
    DEFINES += USE_PLAYERS
    #DEFINES -= USE_SINGLE_APPLICATION
}

win32 {
    RC_FILE = smtube.rc
}

amiga {
    DEFINES -= USE_PLAYERS
    DEFINES += QT_NO_DEBUG_OUTPUT
    DEFINES -= USE_SINGLE_APPLICATION
    HEADERS += erroramiga.h
    SOURCES += erroramiga.cpp
}

# qtsingleapplication
contains(DEFINES, USE_SINGLE_APPLICATION) {
    SOURCES += qtsingleapplication/qtsingleapplication.cpp qtsingleapplication/qtlocalpeer.cpp
    HEADERS += qtsingleapplication/qtsingleapplication.h qtsingleapplication/qtlocalpeer.h
}

contains(DEFINES, USE_PLAYERS) {
    HEADERS += players.h
    SOURCES += players.cpp
} else {
    HEADERS += hcplayer.h
}

contains(DEFINES, YT_DL) {
    HEADERS += recordingdialog.h downloadfile.h
    SOURCES += recordingdialog.cpp downloadfile.cpp
}
