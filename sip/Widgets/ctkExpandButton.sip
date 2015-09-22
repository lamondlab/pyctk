/*=========================================================================

  Library:  PyCTK
  Filename: ctkExpandButton.sip

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

class ctkExpandButton : public QToolButton {

%TypeHeaderCode
#include "ctkExpandButton.h"
%End

public:
  explicit ctkExpandButton(QWidget *_parent /TransferThis/ = 0);
  virtual ~ctkExpandButton();
  void setMirrorOnExpand(bool newBehavior);
  bool mirrorOnExpand() const;
  void setOrientation(Qt::Orientation newOrientation);
  Qt::Orientation orientation() const;
  virtual QSize sizeHint() const;

protected:
  virtual void nextCheckState();

private:
  ctkExpandButton(const ctkExpandButton &);
  ctkExpandButton &operator=(const ctkExpandButton &);

};

