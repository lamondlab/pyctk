@echo off
nmake clean
rd modules /S /Q
rd src\debug /S /Q
rd src\release /S /Q
del src\Makefile* /Q
del Makefile /Q
@echo on