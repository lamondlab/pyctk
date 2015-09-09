/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowGroupBox.sip

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

class ctkWorkflowGroupBox : public QWidget
{

%TypeHeaderCode
#include "ctkWorkflowGroupBox.h"
%End

public:
  explicit ctkWorkflowGroupBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkWorkflowGroupBox();

  QString title()const;
  QString subTitle()const;
  QString preText()const;
  void setPreText(const QString& newPreText);
  QString postText()const;
  void setPostText(const QString& newPostText);
  QString errorText()const;
  QLayout* clientAreaLayout()const;
  QString titleFormat()const;
  void setTitleFormat(const QString& format);
  QString subTitleFormat()const;
  void setSubTitleFormat(const QString& format);
  QString errorTextFormat()const;
  void setErrorTextFormat(const QString& format);
  bool hideWidgetsOfNonCurrentSteps()const;
  void setHideWidgetsOfNonCurrentSteps(bool newHideWidgetsOfNonCurrentSteps);
  bool errorTextEnabled()const;
  void setErrorTextEnabled(bool newErrorTextEnabled);

public Q_SLOTS:
  virtual void updateGroupBox(ctkWorkflowStep* currentStep);

protected:
  virtual void setSubTitle(const QString& newSubTitle);
  virtual void setErrorText(const QString& newErrorText);

private:
  ctkWorkflowGroupBox(const ctkWorkflowGroupBox &);
  ctkWorkflowGroupBox &operator=(const ctkWorkflowGroupBox &);

};