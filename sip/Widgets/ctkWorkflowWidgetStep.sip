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