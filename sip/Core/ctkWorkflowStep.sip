class ctkWorkflowStep
{

%TypeHeaderCode
#include "ctkWorkflowStep.h"
#include "ctkWorkflowStep_p.h"
%End

public:
  explicit ctkWorkflowStep();
  explicit ctkWorkflowStep(const QString& newId);
  virtual ~ctkWorkflowStep();

  ctkWorkflow* workflow() const;
  QString id() const;
  void setId(const QString& newStepId);
  QString name() const;
  void setName(const QString& newName);
  QString description() const;
  void setDescription(const QString& newDescription);
  QString statusText() const;
  bool hasValidateCommand() const;
  void setHasValidateCommand(bool newHasValidateCommand);
  bool hasOnEntryCommand() const;
  void setHasOnEntryCommand(bool newHasOnEntryCommand);
  bool hasOnExitCommand() const;
  void setHasOnExitCommand(bool newHasOnExitCommand);
  bool isWidgetType() const;
  QObject* ctkWorkflowStepQObject();

protected:
  explicit ctkWorkflowStep(ctkWorkflowStepPrivate * pimpl, const QString& newId);
  void setWorkflow(ctkWorkflow* newWorkflow);
  void setStatusText(const QString& newText);
  QState* processingState() const;
  QState* validationState() const;
  ctkWorkflowIntrastepTransition* validationTransition() const;
  ctkWorkflowIntrastepTransition* validationFailedTransition() const;
  virtual void onEntry(const ctkWorkflowStep* comingFrom, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType);
  virtual void onExit(const ctkWorkflowStep* goingTo,
                      const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType);

  virtual void validate(const QString& desiredBranchId = QString());
  void invokeValidateCommand(const QString& desiredBranchId = QString()) const;
  void validationComplete(bool validationSuceeded, const QString& branchId = QString()) const;
  void invokeOnEntryCommand(const ctkWorkflowStep* comingFrom, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType) const;
  void onEntryComplete() const;
  void invokeOnExitCommand(const ctkWorkflowStep* goingTo, const ctkWorkflowInterstepTransition::InterstepTransitionType transitionType) const;
  void onExitComplete() const;

private:
  //Q_DECLARE_PRIVATE(ctkWorkflowStep);
  //Q_DISABLE_COPY(ctkWorkflowStep);
  ctkWorkflowStep(const ctkWorkflowStep &);
  ctkWorkflowStep &operator=(const ctkWorkflowStep &);  

  //friend class ctkWorkflow;        // For access to processingState, validationState, setWorkflow, validate
  //friend class ctkWorkflowPrivate; // For access to invokeOn{Entry,Exit}Command, on{Entry,Exit}
};