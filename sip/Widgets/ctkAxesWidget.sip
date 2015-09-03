class ctkAxesWidget : public QWidget
{
  
%TypeHeaderCode
#include "ctkAxesWidget.h"
%End

public : 

  enum Axis
    {
    None=0,
    Right,
    Left,
    Superior,
    Inferior,
    Anterior,
    Posterior,
    };
  
  ctkAxesWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkAxesWidget();

  Axis currentAxis() const;
  bool autoReset() const;

Q_SIGNALS:
  void currentAxisChanged(ctkAxesWidget::Axis axis);

public slots :
  void setCurrentAxis(Axis axis);
  void setCurrentAxisToNone();
  void setAutoReset(bool reset);
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;
  virtual bool hasHeightForWidth()const;
  virtual int heightForWidth(int width)const;

protected: 
  void paintEvent(QPaintEvent *);
  void mousePressEvent(QMouseEvent *mouseEvent);
  void mouseMoveEvent(QMouseEvent *mouseEvent);
  void mouseReleaseEvent(QMouseEvent *mouseEvent);

private :
  ctkAxesWidget(const ctkAxesWidget &);
  ctkAxesWidget &operator=(const ctkAxesWidget &);
};