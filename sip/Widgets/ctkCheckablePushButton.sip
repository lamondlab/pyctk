/*=========================================================================

  Library:  PyCTK
  Filename: ctkCheckablePushButton.sip

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

%Include ctkPushButton.sip

class ctkCheckablePushButton : public ctkPushButton {

%TypeHeaderCode
#include "ctkCheckablePushButton.h"
%End

public:
  ctkCheckablePushButton(QWidget *parent /TransferThis/ = 0);
  ctkCheckablePushButton(const QString &text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCheckablePushButton();
  void setIndicatorAlignment(Qt::Alignment indicatorAlignment);
  Qt::Alignment indicatorAlignment() const;
  virtual Qt::CheckState checkState() const;
  virtual void setCheckState(Qt::CheckState checkState);
  virtual bool checkBoxControlsButton() const;
  virtual void setCheckBoxControlsButton(bool b);
  virtual bool isCheckBoxUserCheckable() const;
  virtual void setCheckBoxUserCheckable(bool b);

protected:
  virtual void mousePressEvent(QMouseEvent *event);
  virtual bool hitButton(const QPoint &pos) const;

signals:
  void checkBoxToggled(bool );
  void checkStateChanged(Qt::CheckState newCheckState);

private:
  ctkCheckablePushButton(const ctkCheckablePushButton &);
  ctkCheckablePushButton &operator=(const ctkCheckablePushButton &);

};

