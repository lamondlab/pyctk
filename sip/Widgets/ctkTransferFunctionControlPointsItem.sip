class ctkTransferFunctionControlPointsItem: public ctkTransferFunctionItem
{

%TypeHeaderCode
#include "ctkTransferFunctionControlPointsItem.h"
%End

public:

  enum MOVE_TYPE{
    STOP_MOVE = 0,
    SWITCH_MOVE,
    DRAW_MOVE,
    FUSION_MOVE
  };

  explicit ctkTransferFunctionControlPointsItem(QGraphicsItem* parent /TransferThis/ = 0);
  ctkTransferFunctionControlPointsItem(ctkTransferFunction* transferFunction, 
                                       QGraphicsItem* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionControlPointsItem();

  virtual void paint(QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0);

protected:
  virtual void mousePressEvent(QGraphicsSceneMouseEvent* e);
  virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* e);
  virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* e);
  virtual void keyPressEvent (QKeyEvent * keyEvent);

private:
  ctkTransferFunctionControlPointsItem(const ctkTransferFunctionControlPointsItem &);
  ctkTransferFunctionControlPointsItem &operator=(const ctkTransferFunctionControlPointsItem &); 

  void updatePointPosition( QPointF iPoint );
  void stopPoints( QPointF iPointF );
  void switchPoints( QPointF iPointF );
  void drawPoints( QPointF iPointF );
  void fusionPoints( QPointF iPointF );
};
