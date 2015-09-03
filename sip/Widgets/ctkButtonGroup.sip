class ctkButtonGroup : public QButtonGroup
{

%TypeHeaderCode
#include "ctkButtonGroup.h"
%End

public:
  explicit ctkButtonGroup(QObject *_parent /TransferThis/ = 0);
  virtual ~ctkButtonGroup();

public Q_SLOTS:
  void setChecked(QAbstractButton* button, bool checked = true);

protected Q_SLOTS:
  void onButtonClicked(int button);
  void onButtonPressed(int button);

private:
  ctkButtonGroup(const ctkButtonGroup &);
  ctkButtonGroup &operator=(const ctkButtonGroup &);
};