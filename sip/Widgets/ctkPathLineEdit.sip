/*=========================================================================

  Library:  PyCTK
  Filename: ctkPathLineEdit.sip

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

class ctkPathLineEdit : public QWidget {

%TypeHeaderCode
#include "ctkPathLineEdit.h"
%End

public:
  enum Filter {
    Dirs=1,
    Files=2,
    Drives=4,
    NoSymLinks=8,
    AllEntries=7,
    TypeMask=15,
    Readable=16,
    Writable=32,
    Executable=64,
    PermissionMask=112,
    Modified=128,
    Hidden=256,
    System=512,
    AccessMask=1008,
    AllDirs=1024,
    CaseSensitive=2048,
    NoDotAndDotDot=4096,
    NoDot=8192,
    NoDotDot=16384,
    NoFilter=- 1,
  };
  typedef QFlags<ctkPathLineEdit::Filter> Filters;

  enum SizeAdjustPolicy {
    AdjustToContents=0,
    AdjustToContentsOnFirstShow=1,
    AdjustToMinimumContentsLength=2,
  };

  ctkPathLineEdit(QWidget *parent /TransferThis/ = 0);
  ctkPathLineEdit(const QString &label, const QStringList &nameFilters, Filters filters = ctkPathLineEdit::AllEntries, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkPathLineEdit();
  QString currentPath() const;
  void setLabel(const QString &label);
  const QString & label() const;
  void setNameFilters(const QStringList &nameFilters);
  const QStringList & nameFilters() const;
  void setFilters(const Filters &filters);
  Filters filters() const;
  void setOptions(const QFileDialog::Options &options);
  const QFileDialog::Options & options() const;
  void setCurrentFileExtension(const QString &extension);
  QString settingKey() const;
  void setSettingKey(const QString &key);
  bool showBrowseButton() const;
  void setShowBrowseButton(bool visible);
  bool showHistoryButton() const;
  void setShowHistoryButton(bool visible);
  SizeAdjustPolicy sizeAdjustPolicy() const;
  void setSizeAdjustPolicy(SizeAdjustPolicy policy);
  int minimumContentsLength() const;
  void setMinimumContentsLength(int lenght);
  QComboBox *comboBox() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;

public slots:
  void setCurrentPath(const QString &path);
  void browse();
  void retrieveHistory();
  void addCurrentPathToHistory();

protected slots:
  void setCurrentDirectory(const QString &directory);
  void updateHasValidInput();

signals:
  void validInputChanged(bool );
  void currentPathChanged(const QString &path);

private:
  ctkPathLineEdit(const ctkPathLineEdit &);
  ctkPathLineEdit &operator=(const ctkPathLineEdit &);

};

