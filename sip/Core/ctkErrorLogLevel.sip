class ctkErrorLogLevel : public QObject
{

%TypeHeaderCode
#include "ctkErrorLogLevel.h"
%End

public:
  ctkErrorLogLevel();

  enum LogLevel
    {
    None     = 0x0,
    Unknown  = 0x1,
    Status   = 0x2,
    Trace    = 0x4,
    Debug    = 0x8,
    Info     = 0x10,
    Warning  = 0x20,
    Error    = 0x40,
    Critical = 0x80,
    Fatal    = 0x100
    };

  QString operator ()(LogLevel logLevel);

  static QString logLevelAsString(ctkErrorLogLevel::LogLevel logLevel);
};