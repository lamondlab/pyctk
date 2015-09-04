class ctkCheckBox : public QCheckBox
{

%TypeHeaderCode
#include "ctkCheckBox.h"
%End

public:
  ctkCheckBox(QWidget *_parent /TransferThis/ = 0);
  virtual ~ctkCheckBox();

  void setIndicatorIcon(const QIcon& newIcon);
  QIcon indicatorIcon() const;
  void setIndicatorIconSize(const QSize& newSize);
  QSize indicatorIconSize() const;

private:
  ctkCheckBox(const ctkCheckBox &);
  ctkCheckBox &operator=(const ctkCheckBox &);  
};