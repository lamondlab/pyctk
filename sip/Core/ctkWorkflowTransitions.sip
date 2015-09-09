/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowTransitions.sip

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

struct ctkWorkflowIntrastepTransitionEvent : public QEvent
{

%TypeHeaderCode
#include "ctkWorkflowTransitions.h"
%End

  ctkWorkflowIntrastepTransitionEvent(int newTransitionType);
  /*static inline*/ int getWorkflowIntrastepTransitionEventType();
  int EventTransitionType;
};

class ctkWorkflowIntrastepTransition : public QAbstractTransition
{

%TypeHeaderCode
#include "ctkWorkflowTransitions.h"
%End

public:

  enum IntrastepTransitionType
  {
    ValidationTransition = 0,
    ValidationFailedTransition
  };

  ctkWorkflowIntrastepTransition(IntrastepTransitionType newTransitionType);

  IntrastepTransitionType transitionType();

protected:
  virtual bool eventTest(QEvent* e);
  void onTransition(QEvent*);
};

struct ctkWorkflowInterstepTransitionEvent : public QEvent
{

%TypeHeaderCode
#include "ctkWorkflowTransitions.h"
%End

  ctkWorkflowInterstepTransitionEvent(int newTransitionType);
  ctkWorkflowInterstepTransitionEvent(int newTransitionType, const QString& newId);

  /*static inline*/ int getWorkflowInterstepTransitionEventType();

  int     EventTransitionType;
  QString EventId;
};

class ctkWorkflowInterstepTransition : public QAbstractTransition
{

%TypeHeaderCode
#include "ctkWorkflowTransitions.h"
%End

public:

  enum InterstepTransitionType
  {
    TransitionToNextStep = 0,
    TransitionToPreviousStep,
    StartingWorkflow,
    StoppingWorkflow,
    TransitionToPreviousStartingStepAfterSuccessfulGoToFinishStep
  };

  ctkWorkflowInterstepTransition(InterstepTransitionType newTransitionType);
  ctkWorkflowInterstepTransition(InterstepTransitionType newTransitionType, const QString& newId);

  InterstepTransitionType transitionType();
  QString& id();

protected:
  virtual bool eventTest(QEvent* e);
  void onTransition(QEvent*);
};