/*=========================================================================

  Library:  PyCTK
  Filename: ctkDynamicSpacer.sip

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

class ctkDynamicSpacer : public QWidget {

%TypeHeaderCode
#include "ctkDynamicSpacer.h"
%End

public:
  ctkDynamicSpacer(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkDynamicSpacer();
  QSizePolicy activeSizePolicy() const;
  void setActiveSizePolicy(QSizePolicy sizePolicy);
  void setActiveSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical);
  QSizePolicy inactiveSizePolicy() const;
  void setInactiveSizePolicy(QSizePolicy sizePolicy);
  void setInactiveSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical);
  bool isActive() const;
  bool isInactive() const;

public slots:
  void setActive(bool enable);
  void setInactive(bool disable);

private:
  ctkDynamicSpacer(const ctkDynamicSpacer &);
  ctkDynamicSpacer &operator=(const ctkDynamicSpacer &);

};

