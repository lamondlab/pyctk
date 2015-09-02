class ctkCommandLineParser : public QObject
{

%TypeHeaderCode
#include "ctkCommandLineParser.h"
%End

public:
  ctkCommandLineParser(QObject* newParent /TransferThis/ = 0);
  ctkCommandLineParser(QSettings* settings, QObject* newParent /TransferThis/ = 0);
  ~ctkCommandLineParser();
  
  QHash<QString, QVariant> parseArguments(const QStringList &arguments, bool* ok = 0);
  QHash<QString, QVariant> parseArguments(int argc, char** argv, bool* ok = 0);
  QString errorString() const;
  const QStringList& unparsedArguments() const;
  bool argumentAdded(const QString& argument) const;
  bool argumentParsed(const QString& argument) const;
  void addArgument(const QString& longarg, const QString& shortarg,
                   QVariant::Type type, const QString& argHelp = QString(),
                   const QVariant& defaultValue = QVariant(),
                   bool ignoreRest = false, bool deprecated = false);

  void addDeprecatedArgument(const QString& longarg, const QString& shortarg,
                             const QString& argHelp);

  bool setExactMatchRegularExpression(const QString& argument, const QString& expression,
                                      const QString& exactMatchFailedMessage);

  int fieldWidth() const;
  QString helpText(const char charPad = ' ') const;
  void setArgumentPrefix(const QString& longPrefix, const QString& shortPrefix);
  void beginGroup(const QString& description);
  void endGroup();
  void enableSettings(const QString& disableLongArg = "",
                      const QString& disableShortArg = "");

  void mergeSettings(bool merge);
  bool settingsEnabled() const;
  void setStrictModeEnabled(bool strictMode);
};