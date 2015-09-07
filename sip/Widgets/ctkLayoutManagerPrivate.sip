class ctkLayoutManagerPrivate
{

%TypeHeaderCode
#include "ctkLayoutManager_p.h"
%End

public:
  ctkLayoutManagerPrivate(ctkLayoutManager& object);
  virtual ~ctkLayoutManagerPrivate();

  virtual void init();
  void clearLayout(QLayout* layout);
  void clearWidget(QWidget* widget, QLayout* parentLayout = 0);
};