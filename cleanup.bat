@echo off
nmake clean
rd modules /S /Q
rd PyCTK /S /Q

rd src\Core\debug /S /Q
rd src\Core\release /S /Q
del src\Core\Makefile* /Q

rd src\Widgets\debug /S /Q
rd src\Widgets\release /S /Q
del src\Widgets\Makefile* /Q

del src\Makefile* /Q
del Makefile /Q
@echo on