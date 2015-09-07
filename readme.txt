Known Issues/Comments
=====================

1. ctkBackTrace: ~ctkBackTrace() should throw().
2. ctkBinaryFileDescriptor: commented out until I work out how to install binutils (<bfd.h>).
3. ctkCallback: effectively useless until I work out how to SIPify function pointers.
4. ctkCorePythonQtDecorators: omitted as is seems somewhat cyclical to allow Python -> C++ -> Python!
5. ctkDependencyGraph: need to work out how to pass std::list<int> as function argument.
6. ctkException: is there any point in exposing this to Python?
7. ctkHighPrecisionTimer: not wrapped as not exported.
8. ctkLogger: wrapped but deprecated.
9. ctkSingleton: not wrapped as not exported.
10. ctkAbstract*.tpp: not wrapped as not exported.
11. ctkAbstractQObjectFactory: not included due to missing namespace error 'QAlgorithmsPrivate'
12. ctk*EventPlayer & ctk*EventTranslator: not included due to dependency on QtTesting (currently out of scope).
13. ctkCheckableComboBox: checkableModelHelper() seems to have no implementation, thus is not wrapped.
14. ctkCheckableModelHelper: headerCheckState() and checkState() overloads can't be resolved.
15. ctkProxyStyle: not wrapped as QProxyStyle (on which depends) is not wrapped by PyQt5(?).
16. ctkDoubleSpinBox: coordinates() returns unsupported type (double const*).
17. ctkDoubleSpinBox: coordinatesChanged(double*) takes unsupported type as argument.
18. ctkTransferFunction: need to write recipe for qreal[].
19. ctkIconEnginePlugin: cannot wrap as QIconEnginePlugin is not wrapped by PyQt5(?).