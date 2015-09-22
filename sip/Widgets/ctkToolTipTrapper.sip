/*=========================================================================

  Library:  PyCTK
  Filename: ctkToolTipTrapper.sip

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

class ctkToolTipTrapper : public QObject {

%TypeHeaderCode
#include "ctkToolTipTrapper.h"
%End

public:
  explicit ctkToolTipTrapper(QObject *objectParent /TransferThis/ = 0);
  explicit ctkToolTipTrapper(bool toolTipsTrapped, bool toolTipsWordWordWrapped, QObject *objectParent /TransferThis/ = 0);
  virtual ~ctkToolTipTrapper();
  bool toolTipsTrapped() const;
  bool toolTipsWordWrapped() const;
  bool eventFilter(QObject *watched, QEvent *event);

public slots:
  void setToolTipsTrapped(bool toolTipsTrapped);
  void setToolTipsWordWrapped(bool toolTipsWordWrapped);

private:
  ctkToolTipTrapper(const ctkToolTipTrapper &);
  ctkToolTipTrapper &operator=(const ctkToolTipTrapper &);

};

