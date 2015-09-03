class ctkLogger : public QObject
{

%TypeHeaderCode
#include "ctkLogger.h"
%End

public:
  explicit ctkLogger(QString name, QObject* parent /TransferThis/ = 0);
  virtual ~ctkLogger ();

  void debug(const QString& s);
  void info(const QString& s);
  void trace(const QString& s);
  void warn(const QString& s);
  void error(const QString& s);
  void fatal(const QString& s);
};