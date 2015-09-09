class ctkTransferFunctionBarsItem: public ctkTransferFunctionItem
{

%TypeHeaderCode
#include "ctkTransferFunctionBarsItem.h"
%End

public:
  ctkTransferFunctionBarsItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionBarsItem(ctkTransferFunction* transferFunc,
                              QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionBarsItem();

  void setBarWidth(qreal newBarWidth);
  qreal barWidth()const;
  void setBarColor(const QColor& newBarColor);
  QColor barColor()const;
  
  enum LogMode
  {
    NoLog = 0,
    UseLog = 1,
    AutoLog =2
  };

  virtual void paint(QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0);

private:
  ctkTransferFunctionBarsItem(const ctkTransferFunctionBarsItem &);
  ctkTransferFunctionBarsItem &operator=(const ctkTransferFunctionBarsItem &);  
};