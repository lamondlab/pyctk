class ctkCallback : public QObject
{

%TypeHeaderCode
#include "ctkCallback.h"
%End

public:

  ctkCallback(QObject * parentObject /TransferThis/ = 0);
  // ctkCallback(void (*callback)(void * data), QObject * parentObject /TransferThis/ = 0);
  virtual ~ctkCallback();

  //void (*callback()const)(void*);
  //void setCallback(void (*callback)(void * data)); 
  void * callbackData() const;
  void setCallbackData(void * data);
  
public Q_SLOTS:
  virtual void invoke();
};
