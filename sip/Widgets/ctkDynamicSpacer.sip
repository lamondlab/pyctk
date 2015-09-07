class ctkDynamicSpacer : public QWidget
{
  
%TypeHeaderCode
#include "ctkDynamicSpacer.h"
%End

public:
  ctkDynamicSpacer(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkDynamicSpacer();

  QSizePolicy activeSizePolicy() const;
  void setActiveSizePolicy(QSizePolicy sizePolicy);
  /*inline*/ void setActiveSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical);
  QSizePolicy inactiveSizePolicy() const;
  void setInactiveSizePolicy(QSizePolicy sizePolicy);
  /*inline*/ void setInactiveSizePolicy(QSizePolicy::Policy horizontal, QSizePolicy::Policy vertical);
  bool isActive()const;
  /*inline*/ bool isInactive()const;

public Q_SLOTS:
  void setActive(bool enable);
  /*inline*/ void setInactive(bool disable);

private:
  ctkDynamicSpacer(const ctkDynamicSpacer &);
  ctkDynamicSpacer &operator=(const ctkDynamicSpacer &); 
};