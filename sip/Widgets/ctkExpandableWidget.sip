class ctkExpandableWidget: public QFrame
{

%TypeHeaderCode
#include "ctkExpandableWidget.h"
%End

public:
  ctkExpandableWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkExpandableWidget();

  void setOrientations(Qt::Orientations orientations);
  Qt::Orientations orientations()const;
  void setSizeGripInside(bool);
  bool isSizeGripInside()const;
  void setSizeGripMargins(QSize margins);
  QSize sizeGripMargins()const;
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

public Q_SLOTS:
  void updateSizeHint();

protected:
  virtual void resizeEvent(QResizeEvent* event);
  virtual bool event(QEvent* event);

private:
  ctkExpandableWidget(const ctkExpandableWidget &);
  ctkExpandableWidget &operator=(const ctkExpandableWidget &);  
};