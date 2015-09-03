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