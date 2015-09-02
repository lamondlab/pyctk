class ctkErrorLogTerminalOutput : public QObject
{

%TypeHeaderCode
#include "ctkErrorLogTerminalOutput.h"
%End

public:
  ctkErrorLogTerminalOutput();
  virtual ~ctkErrorLogTerminalOutput();

  enum TerminalOutput
    {
    None            = 0x0,
    StandardError   = 0x1,
    StandardOutput  = 0x2,
    All             = 0x3 // StandardError | StandardOutput
  };

  bool enabled() const;
  void setEnabled(bool value);
  int fileDescriptor() const;
  void setFileDescriptor(int fd);
  void output(const QString& text);
};