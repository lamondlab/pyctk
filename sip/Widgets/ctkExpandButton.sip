class ctkExpandButton : public QToolButton
{

%TypeHeaderCode
#include "ctkExpandButton.h"
%End

public:
  explicit ctkExpandButton(QWidget *_parent /TransferThis/ = 0);
  virtual ~ctkExpandButton();

  void setMirrorOnExpand(bool newBehavior);
  bool mirrorOnExpand() const;
  void setOrientation(Qt::Orientation newOrientation);
  Qt::Orientation orientation() const;
  virtual QSize sizeHint() const;

private Q_SLOTS:
  void updateIcon(Qt::LayoutDirection newDirection);

protected:
  virtual void nextCheckState();

private:
  ctkExpandButton(const ctkExpandButton &);
  ctkExpandButton &operator=(const ctkExpandButton &);  
};