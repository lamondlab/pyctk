/*=========================================================================

  Library:  PyCTK
  Filename: ctkCheckableModelHelper.sip

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

class ctkCheckableModelHelper : public QObject
{

%TypeHeaderCode
#include "ctkCheckableModelHelper.h"
%End

public:
  ctkCheckableModelHelper(Qt::Orientation orientation, QObject *parent /TransferThis/ = 0);
  virtual ~ctkCheckableModelHelper();

  Qt::Orientation orientation() const;
  QAbstractItemModel *model() const;
  virtual void setModel(QAbstractItemModel *model);
  QModelIndex rootIndex() const;
  virtual void setRootIndex(const QModelIndex &index);
  bool isHeaderCheckable(int section) const;
  bool isCheckable(const QModelIndex& index) const;
  Qt::CheckState headerCheckState(int section) const;
  Qt::CheckState checkState(const QModelIndex&) const;
  // bool headerCheckState(int section, Qt::CheckState& checkState) const;
  //bool checkState(const QModelIndex&, Qt::CheckState& checkState) const;
  void setPropagateDepth(int depth);
  int  propagateDepth() const;
  void setForceCheckability(bool force);
  bool forceCheckability() const;
  Qt::CheckState defaultCheckState() const;
  void setDefaultCheckState(Qt::CheckState);

public Q_SLOTS:
  void setCheckState(const QModelIndex& modelIndex, Qt::CheckState checkState);
  void setHeaderCheckState(int section, Qt::CheckState checkState);
  void toggleCheckState(const QModelIndex& modelIndex);
  void toggleHeaderCheckState(int section);

private Q_SLOTS:
  void onHeaderDataChanged(Qt::Orientation orient, int first, int last);
  void onDataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight);
  void updateHeadersFromItems();
  void onColumnsInserted(const QModelIndex& parent, int start, int end);
  void onRowsInserted(const QModelIndex& parent, int start, int end);

private:
  ctkCheckableModelHelper(const ctkCheckableModelHelper &);
  ctkCheckableModelHelper &operator=(const ctkCheckableModelHelper &);   
};
