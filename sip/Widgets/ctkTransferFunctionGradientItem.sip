class ctkTransferFunctionGradientItem: public ctkTransferFunctionItem
{

%TypeHeaderCode
#include "ctkTransferFunctionGradientItem.h"
%End

public:
  ctkTransferFunctionGradientItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionGradientItem(ctkTransferFunction* transferFunction, 
                                  QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionGradientItem();

  virtual void paint(QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0);
  bool mask()const;
  void setMask(bool mask);

private:
  ctkTransferFunctionGradientItem(const ctkTransferFunctionGradientItem &);
  ctkTransferFunctionGradientItem &operator=(const ctkTransferFunctionGradientItem &); 
};