include(dissent.pro)
TEMPLATE = app
TARGET = keygen
INCLUDEPATH += src 
#DEFINES += QT_NO_DEBUG_OUTPUT
#DEFINES += QT_NO_WARNING_OUTPUT
DESTDIR += build/
OBJECTS_DIR += build/.output/keygen

# Input
SOURCES += src/Applications/Keygen.cpp
