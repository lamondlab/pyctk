@echo off
python configure.py --qmake=C:\Qt\5.4\msvc2010_opengl\bin --sip-extras=-IC:\Users\Rob\Downloads\PyQt-gpl-5.4.2\PyQt-gpl-5.4.2\sip
nmake

mkdir PyCTK
cd PyCTK
type nul >> __init__.py
copy ..\modules\Core\Core.lib .
copy ..\modules\Core\Core.pyd .
copy ..\modules\Widgets\Widgets.lib .
copy ..\modules\Widgets\Widgets.pyd .
cd ..
@echo on