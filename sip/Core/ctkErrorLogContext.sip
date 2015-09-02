struct ctkErrorLogContext
{
%TypeHeaderCode
#include "ctkErrorLogContext.h"
%End

  ctkErrorLogContext(); //Line(0),File("unknown"), Function("unknown"), Message(""){}
  ctkErrorLogContext(const QString& msg); //:
    //Line(0),File("unknown"), Function("unknown"), Message(msg){}
  QString Category;
  int Line;
  QString File;
  QString Function;
  QString Message;
};