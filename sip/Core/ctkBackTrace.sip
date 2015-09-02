class ctkBackTrace
{

%TypeHeaderCode
#include "ctkBackTrace.h"
%End

public:

  //static size_t const DefaultStackSize;

  ctkBackTrace(const ctkBackTrace& other);
  ctkBackTrace(size_t framesNumber /*= DefaultStackSize*/);
  virtual ~ctkBackTrace() /*throw()*/;
  size_t stackSize() const;
  void* returnAddress(unsigned frameNumber) const;
  QString stackFrame(unsigned frameNumber) const;
  QList<QString> stackTrace() const;
};