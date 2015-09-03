Known Issues
============

1. ctkBackTrace: ~ctkBackTrace should throw().
2. ctkBinaryFileDescriptor: commented out until I work out how to install binutils (<bfd.h>).
3. ctkCallback: effectively useless until I work out how to SIPify function pointers.
4. ctkCorePythonQtDecorators: omitted as is seems somewhat cyclical to allow Python -> C++ -> Python!
5. ctkDependencyGraph: need to work out how to pass std::list<int> as function argument.
6. ctkException: is there any point in exposing this to Python?
7. ctkHighPrecisionTimer: not wrapped as not exported.
8. ctkLogger: wrapped but deprecated.
9. ctkSingleton: not wrapped as not exported.