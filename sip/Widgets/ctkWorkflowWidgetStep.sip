/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowWidgetStep.sip

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

class ctkWorkflowWidgetStep : public QWidget, public ctkWorkflowStep
{

%TypeHeaderCode
#include "ctkWorkflowWidgetStep.h"
%End

public:

  enum ButtonBoxHint {
    NoHints = 0x0,
    BackButtonHidden = 0x1,
    BackButtonDisabled = 0x2,
    NextButtonHidden = 0x4,
    NextButtonDisabled = 0x8,
    ButtonBoxHidden = 0x10
  };
  //Q_DECLARE_FLAGS(ButtonBoxHints, ButtonBoxHint)
  typedef QFlags<ctkWorkflowWidgetStep::ButtonBoxHint> ButtonBoxHints;

  explicit ctkWorkflowWidgetStep(QWidget* newParent /TransferThis/ = 0);
  explicit ctkWorkflowWidgetStep(const QString& newId, QWidget* newParent /TransferThis/ = 0);
  virtual ~ctkWorkflowWidgetStep();

  virtual QString backButtonText()const;
  virtual void setBackButtonText(const QString& name);
  virtual QString nextButtonText()const;
  virtual void setNextButtonText(const QString& name);
  void setButtonBoxHints(ButtonBoxHints buttonBoxHints);
  ButtonBoxHints buttonBoxHints()const;
  QIcon icon()const;
  void setIcon(const QIcon& newIcon);
  virtual QWidget* stepArea();
  virtual bool hasShowUserInterfaceCommand()const;
  virtual void setHasShowUserInterfaceCommand(bool flag);
  virtual bool hasCreateUserInterfaceCommand()const;
  virtual void setHasCreateUserInterfaceCommand(bool flag);

protected:
  virtual void createUserInterface();
  virtual void showUserInterface();
  void invokeCreateUserInterfaceCommand()const;
  void createUserInterfaceComplete()const;
  void invokeShowUserInterfaceCommand()const;
  void showUserInterfaceComplete()const;

private:
  ctkWorkflowWidgetStep(const ctkWorkflowWidgetStep &);
};