/*=========================================================================

  Library:  PyCTK
  Filename: ctkDirectoryButton.sip

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

class ctkDirectoryButton: public QWidget
{

%TypeHeaderCode
#include "ctkDirectoryButton.h"
%End

public:
  ctkDirectoryButton(QWidget * parent /TransferThis/ = 0);
  ctkDirectoryButton(const QString& directory, QWidget * parent /TransferThis/ = 0);
  ctkDirectoryButton(const QIcon& icon, const QString& directory, QWidget * parent /TransferThis/ = 0);
  virtual ~ctkDirectoryButton();

  void setDirectory(const QString& path);
  QString directory()const;
  void setCaption(const QString& caption);
  const QString& caption()const;
  void setText(const QString& text);
  const QString& text()const;
  void setIcon(const QIcon& icon);
  QIcon icon()const;

  void setOptions(const QFileDialog::Options& options);
  const QFileDialog::Options& options()const;
  QFileDialog::AcceptMode acceptMode() const;

public Q_SLOTS:
  void browse();

Q_SIGNALS:
  void directoryChanged(const QString&);
  void directorySelected(const QString&);

private:
  ctkDirectoryButton(const ctkDirectoryButton &);
  ctkDirectoryButton &operator=(const ctkDirectoryButton &);
};