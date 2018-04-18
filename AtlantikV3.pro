#-------------------------------------------------
#
# Project created by QtCreator 2018-03-19T17:44:04
#
#-------------------------------------------------

QT       += core sql

QT       += gui

QT       += widgets

TARGET = AtlantikV3
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    bateau.cpp \
    bateauFret.cpp \
    bateauVoyageur.cpp \
    collBatVoyageur.cpp \
    collEquipement.cpp \
    equipement.cpp \
    jeuEnregistrement.cpp \
    passerelle.cpp \
    PDF.cpp

HEADERS += bateau.h \
    bateauFret.h \
    bateauVoyageur.h \
    collBatVoyageur.h \
    collEquipement.h \
    equipement.h \
    jeuEnregistrement.h \
    passerelle.h \
    PDF.h
