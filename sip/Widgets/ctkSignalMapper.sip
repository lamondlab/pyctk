class ctkSignalMapper: public QSignalMapper
{

%TypeHeaderCode
#include "ctkSignalMapper.h"
%End
  
public:
  ctkSignalMapper(QObject* newParent /TransferThis/ = 0);
  
public Q_SLOTS:
  void map(QAction* sender);

protected:
  ctkSignalMapper(const ctkSignalMapper &);
};