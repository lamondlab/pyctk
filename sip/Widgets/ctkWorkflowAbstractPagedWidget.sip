/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowAbstractPagedWidget.sip

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

%Include ctkWorkflowWidget.sip

class ctkWorkflowAbstractPagedWidget : public ctkWorkflowWidget {

%TypeHeaderCode
#include "ctkWorkflowAbstractPagedWidget.h"
%End

public:
  explicit ctkWorkflowAbstractPagedWidget(QWidget *newParent /TransferThis/ = 0);
  virtual ~ctkWorkflowAbstractPagedWidget();
  virtual void associateStepWithLabel(ctkWorkflowStep *step, QString label);
  virtual void associateStepWithPage(ctkWorkflowStep *step, int index);
  virtual void associateStepWithPage(ctkWorkflowStep *step, int index, QString label);
  virtual ctkWorkflowGroupBox *workflowGroupBox(ctkWorkflowStep *step) const;

protected:
  virtual void updateStepUI(ctkWorkflowStep *currentStep);
  virtual void initClientArea()=0;
  virtual QWidget *clientArea()=0;
  virtual void createNewPage(QWidget *widget)=0;
  virtual void showPage(QWidget *widget, const QString &label)=0;

private:
  ctkWorkflowAbstractPagedWidget(const ctkWorkflowAbstractPagedWidget &);
  ctkWorkflowAbstractPagedWidget &operator=(const ctkWorkflowAbstractPagedWidget &);

};

