PyCTK
=====
Python bindings for the Qt widgets provided by CTK: The Common Toolkit, a set of common support code for medical imaging, surgical navigation, and related purposes.

Building
--------
To build these bindings you will need to have a working copy of [Qt](http://www.qt.io "Qt") (with qmake), [SIP](https://www.riverbankcomputing.com/software/sip/intro "SIP") and [PyQt5](https://www.riverbankcomputing.com/software/pyqt/intro "PyQt5") installed and preferably on your path. 

### MacOSX
This build has been tested on OSX 10.10.4 (Yosemite) with Python 3.4.3, Qt 5.4, SIP 4.16.8 and PyQt5.4.2 using the clang_64 (clang-602.0.53) compiler.

To build run:

	$ python configure.py
	$ make

### Windows
This build has been tested on Windows 7 Professional SP1 (64bit) with Python 3.4.2 (32bit), Qt 5.4, SIP 4.16.8 and PyQt5.4.2 using the Microsoft Visual Studio 2010 (x86) compiler.

To build run the following from the Visual Studio Command Prompt (2010):

	> python configure.py
	> nmake

Documentation
-------------
Please refer to the CTK C++ documentation available here: http://www.commontk.org/docs/html/classes.html

Examples/Tests
--------------
Testing currently consists of running the example code in the [tests](/tests/) directory.

Known Issues/Comments
---------------------

1. ctkBackTrace: ~ctkBackTrace() should throw().
2. ctkBinaryFileDescriptor: commented out until I work out how to install binutils (<bfd.h>).
3. ctkCallback: effectively useless until I work out how to SIPify function pointers.
4. ctkCorePythonQtDecorators: omitted as is seems somewhat cyclical to allow Python -> C++ -> Python!
5. ctkDependencyGraph: need to work out how to pass std::list<int> as function argument.
6. ctkException: is there any point in exposing this to Python?
7. ctkHighPrecisionTimer: not wrapped as not exported.
8. ctkLogger: wrapped but deprecated.
9. ctkSingleton: not wrapped as not exported.
10. ctkAbstract\*.tpp: not wrapped as not exported.
11. ctkAbstractQObjectFactory: not included due to missing namespace error 'QAlgorithmsPrivate'
12. ctk\*EventPlayer & ctk\*EventTranslator: not included due to dependency on QtTesting (currently out of scope).
13. ctkCheckableComboBox: checkableModelHelper() seems to have no implementation, thus is not wrapped.
14. ctkCheckableModelHelper: headerCheckState() and checkState() overloads can't be resolved.
15. ctkProxyStyle: not wrapped as QProxyStyle (on which depends) is not wrapped by PyQt5(?).
16. ctkDoubleSpinBox: coordinates() returns unsupported type (double const\*).
17. ctkDoubleSpinBox: coordinatesChanged(double\*) takes unsupported type as argument.
18. ctkTransferFunction: need to write recipe for qreal[].
19. ctkIconEnginePlugin: cannot wrap as QIconEnginePlugin is not wrapped by PyQt5(?).
20. ctkRangeWidget: range() ommited until I work out how to wrap double arrays.
21. ctkSignalMapper: unresolved symbol issue.
22. ctkTransferFunctionItem: unresolved symbol issue with protected color() methods.
23. ctkTransferFunctionNativeItem: removed until GL dependency resolved.
