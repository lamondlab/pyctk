class ctkToolTipTrapper : public QObject
{

%TypeHeaderCode
#include "ctkToolTipTrapper.h"
%End

public:
  explicit ctkToolTipTrapper(QObject* objectParent /TransferThis/ = 0);
  explicit ctkToolTipTrapper(bool toolTipsTrapped,
                             bool toolTipsWordWordWrapped,
                             QObject* objectParent /TransferThis/ = 0);
  virtual ~ctkToolTipTrapper();

  bool toolTipsTrapped()const;
  bool toolTipsWordWrapped()const;
  bool eventFilter(QObject* watched, QEvent* event);

public Q_SLOTS:
  void setToolTipsTrapped(bool toolTipsTrapped);
  void setToolTipsWordWrapped(bool toolTipsWordWrapped);

private:
  ctkToolTipTrapper(const ctkToolTipTrapper &);
  ctkToolTipTrapper &operator=(const ctkToolTipTrapper &);  
};