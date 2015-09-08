class ctkTemplateWidget : public QWidget
{

%TypeHeaderCode
#include "ctkTemplateWidget.h"
%End

public:
  explicit ctkTemplateWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkTemplateWidget();

private:
  ctkTemplateWidget(const ctkTemplateWidget &);
  ctkTemplateWidget &operator=(const ctkTemplateWidget &);
};