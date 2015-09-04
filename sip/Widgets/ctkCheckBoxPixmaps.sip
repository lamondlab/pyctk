class ctkCheckBoxPixmaps : public QObject
{

%TypeHeaderCode
#include "ctkCheckBoxPixmaps.h"
%End

public:
  ctkCheckBoxPixmaps(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkCheckBoxPixmaps();

  const QPixmap& pixmap(Qt::CheckState state, bool active) const;
  //const QPixmap& pixmap(int state, bool active) const;

private:
  ctkCheckBoxPixmaps(const ctkCheckBoxPixmaps &);
  ctkCheckBoxPixmaps &operator=(const ctkCheckBoxPixmaps &);  
};