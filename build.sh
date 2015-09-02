#!/bin/sh
set -e
python configure.py --qmake=/Users/rob/Qt/5.4/clang_64/bin
make

mkdir PyCTK
cd PyCTK
touch __init__.py
cp ../modules/Core/Core.so .
cp ../modules/Widgets/Widgets.so .
cd ..
ln -s src/Core/*.dylib .
ln -s src/Widgets/*.dylib .
set +e