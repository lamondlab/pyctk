class ctkBinaryFileDescriptor
{

%TypeHeaderCode
#include "ctkBinaryFileDescriptor.h"
%End

public:
  ctkBinaryFileDescriptor();
  ctkBinaryFileDescriptor(const QString& _fileName);
  virtual ~ctkBinaryFileDescriptor();

  QString fileName()const;
  void setFileName(const QString& _fileName); 
  bool load();
  bool unload();
  bool isLoaded() const;
  void* resolve(const char * symbol);
};