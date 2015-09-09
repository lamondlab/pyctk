class ctkWorkflowTabWidget : public ctkWorkflowAbstractPagedWidget
{

%TypeHeaderCode
#include "ctkWorkflowTabWidget.h"
%End

public:
  explicit ctkWorkflowTabWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkWorkflowTabWidget();

  virtual void createNewPage(QWidget* widget);
  virtual void showPage(QWidget* widget, const QString& label);
  virtual void initClientArea();
  virtual QWidget* clientArea();

private:
  ctkWorkflowTabWidget(const ctkWorkflowTabWidget &);
  ctkWorkflowTabWidget &operator=(const ctkWorkflowTabWidget &);  
};