class ctkFileLogger : public QObject
{

%TypeHeaderCode
#include "ctkFileLogger.h"
%End

public:
  explicit ctkFileLogger(QObject* parentObject /TransferThis/ = 0);
  virtual ~ctkFileLogger();

  bool enabled()const;
  void setEnabled(bool value);

  QString filePath()const;
  void setFilePath(const QString& filePath);

  int numberOfFilesToKeep()const;
  void setNumberOfFilesToKeep(int value);

public Q_SLOTS:
  void logMessage(const QString& msg);
};