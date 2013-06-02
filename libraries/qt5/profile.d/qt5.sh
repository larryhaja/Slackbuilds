#!/bin/sh
# Environment variables for the Qt package.
#
# It's best to use the generic directory to avoid
# compiling in a version-containing path:
if [ -d /usr/lib@LIBDIRSUFFIX@/qt5 ]; then
  QT5DIR=/usr/lib@LIBDIRSUFFIX@/qt5
else
  # Find the newest Qt directory and set $QT5DIR to that:
  for qtd in /usr/lib@LIBDIRSUFFIX@/qt5-* ; do
    if [ -d $qtd ]; then
      QT5DIR=$qtd
    fi
  done
fi
if [ ! "$CPLUS_INCLUDE_PATH" = "" ]; then
  CPLUS_INCLUDE_PATH=$QT5DIR/include:$CPLUS_INCLUDE_PATH
else
  CPLUS_INCLUDE_PATH=$QT5DIR/include
fi
PATH="$PATH:$QT5DIR/bin"
export QT5DIR
export CPLUS_INCLUDE_PATH
