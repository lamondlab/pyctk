/*=========================================================================

  Library:  PyCTK
  Filename: ctkCheckableComboBox.sip

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

class ctkCheckableComboBox : public QComboBox {

%TypeHeaderCode
#include "ctkCheckableComboBox.h"
%End

public:
  ctkCheckableComboBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCheckableComboBox();
  QAbstractItemModel *checkableModel() const;
  void setCheckableModel(QAbstractItemModel *model);
  QModelIndexList checkedIndexes() const;
  bool allChecked() const;
  bool noneChecked() const;
  void setCheckState(const QModelIndex &index, Qt::CheckState check);
  Qt::CheckState checkState(const QModelIndex &index) const;
  //ctkCheckableModelHelper *checkableModelHelper() const;
  bool eventFilter(QObject *o, QEvent *e);

protected:
  virtual void paintEvent(QPaintEvent *);

protected slots:
  void onDataChanged(const QModelIndex &topLeft, const QModelIndex &bottomRight);

signals:
  void checkedIndexesChanged();

private:
  ctkCheckableComboBox(const ctkCheckableComboBox &);
  ctkCheckableComboBox &operator=(const ctkCheckableComboBox &);

};

