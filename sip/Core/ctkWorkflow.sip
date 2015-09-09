/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflow.sip

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

class ctkWorkflow : public QObject
{

%TypeHeaderCode
#include "ctkWorkflow.h"
#include "ctkWorkflow_p.h"
%End

public:
  explicit ctkWorkflow(QObject* parent /TransferThis/ = 0);
  virtual ~ctkWorkflow();

  /*Q_INVOKABLE*/ virtual void start();
  bool isRunning() const;
  /*Q_INVOKABLE*/ virtual void stop();

  enum TransitionDirectionality
  {
    Bidirectional = 0,
    Forward,
    Backward
  };

  /*Q_INVOKABLE*/ virtual bool addTransition(ctkWorkflowStep* origin, ctkWorkflowStep* destination,
                                         const QString& branchId = QString(),
                                         const ctkWorkflow::TransitionDirectionality directionality
                                         = ctkWorkflow::Bidirectional);


  /*Q_INVOKABLE*/ bool hasTransition(ctkWorkflowStep* origin, ctkWorkflowStep* destination,
                                 const QString& branchId = QString(),
                                 const ctkWorkflow::TransitionDirectionality directionality
                                 = ctkWorkflow::Bidirectional);

  /*Q_INVOKABLE*/ ctkWorkflowStep* initialStep() const;
  /*Q_INVOKABLE*/ virtual void setInitialStep(ctkWorkflowStep* step);
  /*Q_INVOKABLE*/ ctkWorkflowStep* currentStep() const;
  /*Q_INVOKABLE*/ bool hasStep(const QString& id) const;
  /*Q_INVOKABLE*/ ctkWorkflowStep* step(const QString& id) const;
  /*Q_INVOKABLE*/ bool canGoForward(ctkWorkflowStep* step=0) const;
  /*Q_INVOKABLE*/ bool canGoBackward(ctkWorkflowStep* step=0) const;
  /*Q_INVOKABLE*/ bool canGoToStep(const QString& targetId, ctkWorkflowStep* step=0) const;
  /*Q_INVOKABLE*/ QList<ctkWorkflowStep*> forwardSteps(ctkWorkflowStep* step=0) const;
  /*Q_INVOKABLE*/ QList<ctkWorkflowStep*> backwardSteps(ctkWorkflowStep* step=0) const;
  /*Q_INVOKABLE*/ QList<ctkWorkflowStep*> finishSteps() const;
  /*Q_INVOKABLE*/ QList<ctkWorkflowStep*> steps() const;
  /*Q_INVOKABLE*/ int backwardDistanceToStep(ctkWorkflowStep* fromStep = 0, ctkWorkflowStep* origin = 0) const;
  bool goBackToOriginStepUponSuccess() const;
  void setGoBackToOriginStepUponSuccess(bool flag);
  bool verbose() const;
  void setVerbose(bool value);

public Q_SLOTS:
  virtual void goForward(const QString& desiredBranchId = QString());
  virtual void goBackward(const QString& desiredBranchId = QString());
  virtual void goToStep(const QString& targetId);
  virtual void evaluateValidationResults(bool validationSucceeded, const QString& branchId);

protected:
  void goToNextStepAfterSuccessfulValidation(const QString& branchId);
  void goToProcessingStateAfterValidationFailed();
  virtual void goToStepSucceeded();
  virtual void goToStepFailed();
  void goFromGoToStepToStartingStep();

protected Q_SLOTS:
  void attemptToGoToNextStep();
  void performTransitionBetweenSteps();

Q_SIGNALS:
  void currentStepChanged(ctkWorkflowStep* currentStep);
  void stepRegistered(ctkWorkflowStep* step);

private:
  ctkWorkflow(const ctkWorkflow &);
  ctkWorkflow &operator=(const ctkWorkflow &);  
  //Q_DECLARE_PRIVATE(ctkWorkflow);
  //Q_DISABLE_COPY(ctkWorkflow);
};