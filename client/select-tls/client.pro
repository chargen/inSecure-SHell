TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
QMAKE_CFLAGS += "-std=gnu99"
SOURCES += main.c
INCLUDEPATH += ../../s2n/api/
QMAKE_LFLAGS += -L../../s2n/lib/ -L../../s2n/libcrypto-root/lib -ls2n -lpthread -ldl -lrt -lcrypto

# gcc main.c -std=gnu99 -I../../s2n/api -L../../s2n/lib -L../../s2n/libcrypto-root/lib -ls2n -lpthread -ldl -lrt -lcrypto
# export LD_LIBRARY_PATH="../../s2n/lib" sudo ldconfig
# export S2N_ENABLE_CLIENT_MODE=1
