class ctkErrorLogQtMessageHandler : public ctkErrorLogAbstractMessageHandler
{
  
%TypeHeaderCode
#include "ctkErrorLogQtMessageHandler.h"
%End

public:
  ctkErrorLogQtMessageHandler();

  virtual QString handlerName()const;
  virtual void setEnabledInternal(bool value);
};