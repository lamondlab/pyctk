class ctkMenuButton : public QPushButton
{
  
%TypeHeaderCode
#include "ctkMenuButton.h"
%End

public:
  ctkMenuButton(QWidget *parent /TransferThis/ = 0);
  ctkMenuButton(const QString& text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkMenuButton();

  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

protected:
  virtual void paintEvent(QPaintEvent*);
  virtual void mousePressEvent(QMouseEvent* event);
  virtual bool hitButton(const QPoint & pos) const;
  virtual void initStyleOption ( QStyleOptionButton * option ) const;

private:
  ctkMenuButton(const ctkMenuButton &);
  ctkMenuButton &operator=(const ctkMenuButton &); 
};