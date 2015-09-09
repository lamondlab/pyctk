class ctkTransferFunctionItem: public QGraphicsObject
{

%TypeHeaderCode
#include "ctkTransferFunctionItem.h"
%End

public:
  ctkTransferFunctionItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionItem(ctkTransferFunction* transferFunction, 
                                  QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionItem();

  /*Q_INVOKABLE*/ void setTransferFunction(ctkTransferFunction* transferFunction);
  ctkTransferFunction* transferFunction()const;
  /*inline*/ void setRect(qreal x, qreal y, qreal width, qreal height);
  void setRect(const QRectF& rectangle);
  QRectF rect()const;
  virtual QRectF boundingRect()const;

protected:
  // QColor color(const QVariant& value)const;
  // /*inline*/ QColor color(const ctkPoint& point)const;
  virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value);

private:
  ctkTransferFunctionItem(const ctkTransferFunctionItem &);
  ctkTransferFunctionItem &operator=(const ctkTransferFunctionItem &); 
};