/*=========================================================================

  Library:  PyCTK
  Filename: ctkComboBox.sip

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

class ctkComboBox : public QComboBox {

%TypeHeaderCode
#include "ctkComboBox.h"
%End

public:
  enum ScrollEffect {
    NeverScroll=0,
    AlwaysScroll=1,
    ScrollWithFocus=2,
    ScrollWithNoVScrollBar=3,
  };

  explicit ctkComboBox(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkComboBox();
  void setDefaultText(const QString &);
  QString defaultText() const;
  void setDefaultIcon(const QIcon &);
  QIcon defaultIcon() const;
  void forceDefault(bool forceDefault);
  bool isDefaultForced() const;
  void setElideMode(const Qt::TextElideMode &newMode);
  Qt::TextElideMode elideMode() const;
  ScrollEffect scrollWheelEffect() const;
  void setScrollWheelEffect(ScrollEffect scroll);
  virtual QSize minimumSizeHint() const;
  virtual QSize sizeHint() const;

protected:
  virtual void paintEvent(QPaintEvent *event);
  virtual void changeEvent(QEvent *event);
  virtual void wheelEvent(QWheelEvent *event);

private:
  ctkComboBox(const ctkComboBox &);
  ctkComboBox &operator=(const ctkComboBox &);

};

