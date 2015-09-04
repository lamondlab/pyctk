class ctkComboBox : public QComboBox
{

%TypeHeaderCode
#include "ctkComboBox.h"
%End

public:
  explicit ctkComboBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkComboBox();

  void setDefaultText(const QString&);
  QString defaultText()const;
  void setDefaultIcon(const QIcon&);
  QIcon defaultIcon()const;
  void forceDefault(bool forceDefault);
  bool isDefaultForced()const;
  void setElideMode(const Qt::TextElideMode& newMode);
  Qt::TextElideMode elideMode()const;

  enum ScrollEffect
  {
    NeverScroll,
    AlwaysScroll,
    ScrollWithFocus,
    ScrollWithNoVScrollBar
  };

  ScrollEffect scrollWheelEffect()const;
  void setScrollWheelEffect(ScrollEffect scroll);
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

protected:
  virtual void paintEvent(QPaintEvent* event);
  virtual void changeEvent(QEvent* event);
  virtual void wheelEvent(QWheelEvent* event);

private:
  ctkComboBox(const ctkComboBox &);
  ctkComboBox &operator=(const ctkComboBox &);  
};