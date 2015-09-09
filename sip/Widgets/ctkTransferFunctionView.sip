class ctkTransferFunctionView: public QGraphicsView
{

%TypeHeaderCode
#include "ctkTransferFunctionView.h"
%End

public:
  ctkTransferFunctionView(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkTransferFunctionView();

protected:
  virtual void resizeEvent(QResizeEvent * event);

private:
  ctkTransferFunctionView(const ctkTransferFunctionView &);
  ctkTransferFunctionView &operator=(const ctkTransferFunctionView &); 
};