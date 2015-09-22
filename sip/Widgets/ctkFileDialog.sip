/*=========================================================================

  Library:  PyCTK
  Filename: ctkFileDialog.sip

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

class ctkFileDialog : public QFileDialog {

%TypeHeaderCode
#include "ctkFileDialog.h"
%End

public:
  explicit ctkFileDialog(QWidget *parent /TransferThis/ = 0, const QString &caption = QString(), const QString &directory = QString(), const QString &filter = QString());
  virtual ~ctkFileDialog();
  void setBottomWidget(QWidget *widget, const QString &label = QString());
  QWidget *bottomWidget() const;
  bool eventFilter(QObject *obj, QEvent *event);

public slots:
  void setAcceptButtonEnable(bool enable);

protected:
  virtual void accept();

protected slots:
  void onSelectionChanged();

signals:
  void fileSelectionChanged(const QStringList &selected);

private:
  ctkFileDialog(const ctkFileDialog &);
  ctkFileDialog &operator=(const ctkFileDialog &);

};

