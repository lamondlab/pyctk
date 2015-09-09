class ctkWorkflowStackedWidget : public ctkWorkflowAbstractPagedWidget
{

%TypeHeaderCode
#include "ctkWorkflowStackedWidget.h"
%End

public:
  explicit ctkWorkflowStackedWidget(QWidget* newParent /TransferThis/ = 0);
  virtual ~ctkWorkflowStackedWidget();

  virtual void createNewPage(QWidget* widget);
  virtual void showPage(QWidget* widget, const QString& label);
  virtual void initClientArea();
  virtual QWidget* clientArea();

private:
  ctkWorkflowStackedWidget(const ctkWorkflowStackedWidget &);
  ctkWorkflowStackedWidget &operator=(const ctkWorkflowStackedWidget &);  
};