class ctkCollapsibleGroupBox : public QGroupBox
{

%TypeHeaderCode
#include "ctkCollapsibleGroupBox.h"
%End

public:
  ctkCollapsibleGroupBox(QWidget* parent /TransferThis/ = 0);
  ctkCollapsibleGroupBox(const QString& title, QWidget* parent /TransferThis/ = 0);
  virtual ~ctkCollapsibleGroupBox();
  
  /*inline*/ void setCollapsed(bool collapse);
  /*inline*/ bool collapsed()const;
  virtual void setCollapsedHeight(int heightInPixels);
  int collapsedHeight()const;
  virtual bool eventFilter(QObject* child, QEvent* e);
  virtual void setVisible(bool show);

protected Q_SLOTS:
  virtual void expand(bool expand);

protected:
  virtual void childEvent(QChildEvent*);

//#if QT_VERSION < 0x040600
  // virtual void paintEvent(QPaintEvent*);
  // virtual void mousePressEvent(QMouseEvent*);
  // virtual void mouseReleaseEvent(QMouseEvent*);
//#endif

private:
  ctkCollapsibleGroupBox(const ctkCollapsibleGroupBox &);
  ctkCollapsibleGroupBox &operator=(const ctkCollapsibleGroupBox &);
};