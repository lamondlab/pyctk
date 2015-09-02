class ctkErrorLogAbstractMessageHandler : public QObject
{

%TypeHeaderCode
#include "ctkErrorLogAbstractMessageHandler.h"
%End

public:
  ctkErrorLogAbstractMessageHandler();
  virtual ~ctkErrorLogAbstractMessageHandler();

  virtual QString handlerName() const = 0;
  QString handlerPrettyName() const;

  bool enabled() const;
  void setEnabled(bool value);

  void handleMessage(const QString& threadId, ctkErrorLogLevel::LogLevel logLevel,
                     const QString& origin, const ctkErrorLogContext& logContext,
                     const QString &text);

  ctkErrorLogTerminalOutput* terminalOutput(ctkErrorLogTerminalOutput::TerminalOutput terminalOutputType) const;
  void setTerminalOutput(ctkErrorLogTerminalOutput::TerminalOutput terminalOutputType,
                         ctkErrorLogTerminalOutput * terminalOutput);

Q_SIGNALS:
  void messageHandled(const QDateTime& currentDateTime, const QString& threadId,
                      ctkErrorLogLevel::LogLevel logLevel, const QString& origin,
                      const ctkErrorLogContext& logContext, const QString& text);

protected:
  void setHandlerPrettyName(const QString& newHandlerPrettyName);

  virtual void setEnabledInternal(bool value) = 0;
};