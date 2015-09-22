/*=========================================================================

  Library:  PyCTK
  Filename: ctkButtonGroup.sip

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

class ctkButtonGroup : public QButtonGroup {

%TypeHeaderCode
#include "ctkButtonGroup.h"
%End

public:
  explicit ctkButtonGroup(QObject *_parent /TransferThis/ = 0);
  virtual ~ctkButtonGroup();

public slots:
  void setChecked(QAbstractButton *button, bool checked = true);

protected slots:
  void onButtonClicked(int button);
  void onButtonPressed(int button);

private:
  ctkButtonGroup(const ctkButtonGroup &);
  ctkButtonGroup &operator=(const ctkButtonGroup &);

};

