/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowStepPrivate.sip

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

class ctkWorkflowStepPrivate: public QObject
{

%TypeHeaderCode
#include "ctkWorkflowStep.h"
#include "ctkWorkflowStep_p.h"
%End

public:
  ctkWorkflowStepPrivate(ctkWorkflowStep& object);
  ~ctkWorkflowStepPrivate();

protected:
  void invokeValidateCommandInternal(const QString& desiredBranchId)const;
  void validationCompleteInternal(bool validationSuceeded, const QString& branchId)const;
  void invokeOnEntryCommandInternal(const ctkWorkflowStep* comingFrom, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType)const;
  void onEntryCompleteInternal()const;
  void invokeOnExitCommandInternal(const ctkWorkflowStep* goingTo, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType)const;
  void onExitCompleteInternal()const;


Q_SIGNALS:
  void invokeValidateCommand(const QString& desiredBranchId)const;
  void validationComplete(bool validationSuceeded, const QString& branchId)const;
  void invokeOnEntryCommand(const ctkWorkflowStep* comingFrom, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType)const;
  void onEntryComplete()const;
  void invokeOnExitCommand(const ctkWorkflowStep* goingTo, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType)const;
  void onExitComplete()const;
};