class ctkPushButton : public QPushButton
{

%TypeHeaderCode
#include "ctkPushButton.h"
#include "ctkPushButton_p.h"
%End

public:
  ctkPushButton(QWidget *parent /TransferThis/ = 0);
  ctkPushButton(const QString& text, QWidget *parent /TransferThis/ = 0);
  ctkPushButton(const QIcon& icon, const QString& text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkPushButton();

  void setButtonTextAlignment(Qt::Alignment buttonTextAlignment);
  Qt::Alignment buttonTextAlignment()const;
  void setIconAlignment(Qt::Alignment iconAlignment);
  Qt::Alignment iconAlignment()const;
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

protected:
  virtual void paintEvent(QPaintEvent*);

// protected:
//   ctkPushButton(ctkPushButtonPrivate*, QWidget* parent /TransferThis/ = 0);

private:
  ctkPushButton(const ctkPushButton &);
  ctkPushButton &operator=(const ctkPushButton &);
};