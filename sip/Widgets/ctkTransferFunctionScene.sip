class ctkTransferFunctionScene: public QGraphicsScene
{

%TypeHeaderCode
#include "ctkTransferFunctionScene.h"
%End

public:
  ctkTransferFunctionScene(QObject* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionScene();

private:
  ctkTransferFunctionScene(const ctkTransferFunctionScene &);
  ctkTransferFunctionScene &operator=(const ctkTransferFunctionScene &); 
};