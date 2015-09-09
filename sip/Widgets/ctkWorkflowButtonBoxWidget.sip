/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowButtonBoxWidget.sip

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

class ctkWorkflowButtonBoxWidget : public QWidget
{

%TypeHeaderCode
#include "ctkWorkflowButtonBoxWidget.h"
%End

public:
  explicit ctkWorkflowButtonBoxWidget(ctkWorkflow* newWorkflow, QWidget* newParent /TransferThis/ = 0);
  explicit ctkWorkflowButtonBoxWidget(QWidget* newParent /TransferThis/ = 0);
  virtual ~ctkWorkflowButtonBoxWidget();

  ctkWorkflow* workflow()const;
  void setWorkflow(ctkWorkflow * newWorkflow);
  /*Q_INVOKABLE*/ ctkPushButton* backButton()const;
  QString backButtonFormat()const;
  void setBackButtonFormat(const QString& format);
  /*Q_INVOKABLE*/ ctkPushButton* nextButton()const;
  QString nextButtonFormat()const;
  void setNextButtonFormat(const QString& format);
  QString goToButtonsFormat()const;
  void setGoToButtonsFormat(const QString& format);
  QList<ctkPushButton*> goToButtons()const;
  QBoxLayout::Direction direction()const;
  void setDirection(const QBoxLayout::Direction& newDirection);
  bool hideGoToButtons()const;
  void setHideGoToButtons(bool hide);
  bool hideInvalidButtons()const;
  void setHideInvalidButtons(bool newHide);

public Q_SLOTS:
  virtual void updateButtons(ctkWorkflowStep* currentStep);

protected Q_SLOTS:
  virtual void prepareGoToStep();

private:
  ctkWorkflowButtonBoxWidget(const ctkWorkflowButtonBoxWidget &);
  ctkWorkflowButtonBoxWidget &operator=(const ctkWorkflowButtonBoxWidget &); 
};