/*=========================================================================

  Library:  PyCTK
  Filename: ctkExpandableWidget.sip

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

class ctkExpandableWidget : public QFrame {

%TypeHeaderCode
#include "ctkExpandableWidget.h"
%End

public:
  ctkExpandableWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkExpandableWidget();
  void setOrientations(Qt::Orientations orientations);
  Qt::Orientations orientations() const;
  void setSizeGripInside(bool );
  bool isSizeGripInside() const;
  void setSizeGripMargins(QSize margins);
  QSize sizeGripMargins() const;
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;

public slots:
  void updateSizeHint();

protected:
  virtual void resizeEvent(QResizeEvent *event);
  virtual bool event(QEvent *event);

private:
  ctkExpandableWidget(const ctkExpandableWidget &);
  ctkExpandableWidget &operator=(const ctkExpandableWidget &);

};

