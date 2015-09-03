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