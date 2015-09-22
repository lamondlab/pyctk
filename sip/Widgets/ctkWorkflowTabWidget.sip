/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowTabWidget.sip

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

%Include ctkWorkflowAbstractPagedWidget.sip

class ctkWorkflowTabWidget : public ctkWorkflowAbstractPagedWidget {

%TypeHeaderCode
#include "ctkWorkflowTabWidget.h"
%End

public:
  explicit ctkWorkflowTabWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkWorkflowTabWidget();
  virtual void createNewPage(QWidget *widget);
  virtual void showPage(QWidget *widget, const QString &label);
  virtual void initClientArea();
  virtual QWidget *clientArea();

private:
  ctkWorkflowTabWidget(const ctkWorkflowTabWidget &);
  ctkWorkflowTabWidget &operator=(const ctkWorkflowTabWidget &);

};

