class ctkErrorLogFDMessageHandler : public ctkErrorLogAbstractMessageHandler
{

%TypeHeaderCode
#include "ctkErrorLogFDMessageHandler.h"
%End

public:
  ctkErrorLogFDMessageHandler();
  virtual ~ctkErrorLogFDMessageHandler();

  virtual QString handlerName()const;
  virtual void setEnabledInternal(bool value);
};