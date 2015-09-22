/*=========================================================================

  Library:  PyCTK
  Filename: ctkErrorLogModel.sip

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

class ctkErrorLogModel : public QSortFilterProxyModel {

%TypeHeaderCode
#include "ctkErrorLogModel.h"
%End

public:
  enum ColumnsIds {
    TimeColumn=0,
    ThreadIdColumn=1,
    LogLevelColumn=2,
    OriginColumn=3,
    DescriptionColumn=4,
    MaxColumn=DescriptionColumn,
  };

  enum ItemDataRole {
    DescriptionTextRole=33,
  };

  explicit ctkErrorLogModel(QObject *parentObject /TransferThis/ = 0);
  virtual ~ctkErrorLogModel();
  bool registerMsgHandler(ctkErrorLogAbstractMessageHandler *msgHandler);
  QStringList msgHandlerNames() const;
  bool msgHandlerEnabled(const QString &handlerName) const;
  void setMsgHandlerEnabled(const QString &handlerName, bool enabled);
  QStringList msgHandlerEnabled() const;
  void setMsgHandlerEnabled(const QStringList &handlerNames);
  void enableAllMsgHandler();
  void disableAllMsgHandler();
  void setAllMsgHandlerEnabled(bool enabled);
  ctkErrorLogTerminalOutput::TerminalOutputs terminalOutputs() const;
  void setTerminalOutputs(const ctkErrorLogTerminalOutput::TerminalOutputs &terminalOutput);
  ctkErrorLogLevel::LogLevels logLevelFilter() const;
  void filterEntry(const ctkErrorLogLevel::LogLevels &logLevel = ctkErrorLogLevel::Unknown, bool disableFilter = false);
  bool logEntryGrouping() const;
  void setLogEntryGrouping(bool value);
  bool asynchronousLogging() const;
  void setAsynchronousLogging(bool value);
  QString filePath() const;
  void setFilePath(const QString &filePath);
  int numberOfFilesToKeep() const;
  void setNumberOfFilesToKeep(int value);
  bool fileLoggingEnabled() const;
  void setFileLoggingEnabled(bool value);
  QString fileLoggingPattern() const;
  void setFileLoggingPattern(const QString &value);
  QVariant logEntryData(int row, int column = ctkErrorLogModel::DescriptionColumn, int role = Qt::DisplayRole) const;
  QString logEntryDescription(int row) const;
  int logEntryCount() const;

public slots:
  void clear();
  void addEntry(const QDateTime &currentDateTime, const QString &threadId, ctkErrorLogLevel::LogLevel logLevel, const QString &origin, const ctkErrorLogContext &context, const QString &text);

signals:
  void logLevelFilterChanged();
  void entryAdded(ctkErrorLogLevel::LogLevel logLevel);

private:
  ctkErrorLogModel(const ctkErrorLogModel &);
  ctkErrorLogModel &operator=(const ctkErrorLogModel &);

};

