class ctkWorkflowAbstractPagedWidget : public ctkWorkflowWidget
{

%TypeHeaderCode
#include "ctkWorkflowAbstractPagedWidget.h"
%End

public:
  explicit ctkWorkflowAbstractPagedWidget(QWidget* newParent /TransferThis/ = 0);
  virtual ~ctkWorkflowAbstractPagedWidget();

  virtual void associateStepWithLabel(ctkWorkflowStep* step, QString label);
  virtual void associateStepWithPage(ctkWorkflowStep* step, int index);
  virtual void associateStepWithPage(ctkWorkflowStep* step, int index, QString label);

  //using ctkWorkflowWidget::workflowGroupBox;
  virtual ctkWorkflowGroupBox* workflowGroupBox(ctkWorkflowStep* step)const;

protected:
  virtual void updateStepUI(ctkWorkflowStep* currentStep);
  virtual void initClientArea() = 0;
  virtual QWidget* clientArea() = 0;
  virtual void createNewPage(QWidget* widget) = 0;
  virtual void showPage(QWidget* widget, const QString& label) = 0;

private:
  ctkWorkflowAbstractPagedWidget(const ctkWorkflowAbstractPagedWidget &);
  ctkWorkflowAbstractPagedWidget &operator=(const ctkWorkflowAbstractPagedWidget &); 
};