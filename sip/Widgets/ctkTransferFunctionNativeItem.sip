class ctkTransferFunctionNativeItem: public ctkTransferFunctionItem
{

%TypeHeaderCode
#include "ctkTransferFunctionNativeItem.h"
%End

public:
  ctkTransferFunctionNativeItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionNativeItem(ctkTransferFunction* transferFunction, 
                                QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionNativeItem();

  virtual void paint(QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0);

private:
  ctkTransferFunctionNativeItem(const ctkTransferFunctionNativeItem &);
  ctkTransferFunctionNativeItem &operator=(const ctkTransferFunctionNativeItem &);  
};