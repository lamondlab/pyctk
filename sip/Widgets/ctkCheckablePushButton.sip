class ctkCheckablePushButton : public ctkPushButton
{

%TypeHeaderCode
#include "ctkCheckablePushButton.h"
%End

public:
  ctkCheckablePushButton(QWidget *parent /TransferThis/ = 0);
  ctkCheckablePushButton(const QString& text, QWidget *parent /TransferThis/ = 0);
  virtual ~ctkCheckablePushButton();

  void setIndicatorAlignment(Qt::Alignment indicatorAlignment);
  Qt::Alignment indicatorAlignment() const;
  virtual Qt::CheckState checkState() const;
  virtual void setCheckState(Qt::CheckState checkState);
  virtual bool checkBoxControlsButton() const;
  virtual void setCheckBoxControlsButton(bool b);
  virtual bool isCheckBoxUserCheckable() const;
  virtual void setCheckBoxUserCheckable(bool b);

Q_SIGNALS:
  void checkBoxToggled(bool);
  void checkStateChanged(Qt::CheckState newCheckState);

protected:
  virtual void mousePressEvent(QMouseEvent* event);
  virtual bool hitButton(const QPoint & pos) const;

private:
  ctkCheckablePushButton(const ctkCheckablePushButton &);
  ctkCheckablePushButton &operator=(const ctkCheckablePushButton &);  
};