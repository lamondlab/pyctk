struct ctkErrorLogContext
{
%TypeHeaderCode
#include "ctkErrorLogContext.h"
%End

  ctkErrorLogContext();
  ctkErrorLogContext(const QString& msg);
  QString Category;
  int Line;
  QString File;
  QString Function;
  QString Message;
};