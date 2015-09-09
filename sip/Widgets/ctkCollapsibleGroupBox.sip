/*=========================================================================

  Library:  PyCTK
  Filename: ctkCollapsibleGroupBox.sip

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

class ctkCollapsibleGroupBox : public QGroupBox
{

%TypeHeaderCode
#include "ctkCollapsibleGroupBox.h"
%End

public:
  ctkCollapsibleGroupBox(QWidget* parent /TransferThis/ = 0);
  ctkCollapsibleGroupBox(const QString& title, QWidget* parent /TransferThis/ = 0);
  virtual ~ctkCollapsibleGroupBox();
  
  /*inline*/ void setCollapsed(bool collapse);
  /*inline*/ bool collapsed()const;
  virtual void setCollapsedHeight(int heightInPixels);
  int collapsedHeight()const;
  virtual bool eventFilter(QObject* child, QEvent* e);
  virtual void setVisible(bool show);

protected Q_SLOTS:
  virtual void expand(bool expand);

protected:
  virtual void childEvent(QChildEvent*);

//#if QT_VERSION < 0x040600
  // virtual void paintEvent(QPaintEvent*);
  // virtual void mousePressEvent(QMouseEvent*);
  // virtual void mouseReleaseEvent(QMouseEvent*);
//#endif

private:
  ctkCollapsibleGroupBox(const ctkCollapsibleGroupBox &);
  ctkCollapsibleGroupBox &operator=(const ctkCollapsibleGroupBox &);
};