class ctkErrorLogStreamMessageHandler
  : public ctkErrorLogAbstractMessageHandler
{

%TypeHeaderCode
#include "ctkErrorLogStreamMessageHandler.h"
%End

public:
  ctkErrorLogStreamMessageHandler();
  virtual ~ctkErrorLogStreamMessageHandler();

  virtual QString handlerName()const;
  virtual void setEnabledInternal(bool value);
};