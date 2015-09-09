/*=========================================================================

  Library:  PyCTK
  Filename: ctkCommandLineParser.sip

  Copyright (c) 2015 Lamond Lab

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=========================================================================*/

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