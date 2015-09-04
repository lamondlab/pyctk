%If (WS_WIN)
%ModuleCode
#include "ctkUtils.h"
%End
%End

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

%If (WS_WIN)
namespace ctk
{

%TypeHeaderCode
#include "ctkBackTrace.h"
#include "ctkUtils.h"

#include <windows.h>
#include <stdlib.h>
#include <dbghelp.h>
%End

  bool DebugSymInitialize();

};
%End