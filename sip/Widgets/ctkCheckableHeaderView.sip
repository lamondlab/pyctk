/*=========================================================================

  Library:  PyCTK
  Filename: ctkCheckableHeaderView.sip

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

class ctkCheckableHeaderView : public QHeaderView
{

%TypeHeaderCode
#include "ctkCheckableHeaderView.h"
%End

public:
  ctkCheckableHeaderView(Qt::Orientation orient, QWidget *parent /TransferThis/ =0);
  virtual ~ctkCheckableHeaderView();

  virtual void setModel(QAbstractItemModel *model);
  virtual void setRootIndex(const QModelIndex &index);
  virtual bool eventFilter(QObject *object, QEvent *e);
  Qt::CheckState checkState(int section)const;
  //bool checkState(int section,Qt::CheckState& checkState )const; 
  ctkCheckableModelHelper* checkableModelHelper()const;

public Q_SLOTS:
  void setCheckState(int section, Qt::CheckState checkState);

private Q_SLOTS:
  void onHeaderDataChanged(Qt::Orientation orient, int first, int last);
  void onHeaderSectionInserted();
  void updateHeaderPixmaps();
  
protected:
  virtual void updateHeaderPixmaps(int first, int last);
  virtual void initStyleSectionOption(QStyleOptionHeader *option, int section, QRect rect)const;
  virtual void mousePressEvent(QMouseEvent *e);
  virtual void mouseReleaseEvent(QMouseEvent *e);
  bool isPointInCheckBox(int section, QPoint pos)const;

private:
  ctkCheckableHeaderView(const ctkCheckableHeaderView &);
  ctkCheckableHeaderView &operator=(const ctkCheckableHeaderView &);
};