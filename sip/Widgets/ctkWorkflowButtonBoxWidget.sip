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