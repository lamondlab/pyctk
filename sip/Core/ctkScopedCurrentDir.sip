class ctkScopedCurrentDir
{

%TypeHeaderCode
#include "ctkScopedCurrentDir.h"
%End

public:
  explicit ctkScopedCurrentDir(const QString& path);
  virtual ~ctkScopedCurrentDir();

  QString currentPath() const;
  QString savedCurrentPath() const;

private: 
  ctkScopedCurrentDir(const ctkScopedCurrentDir&);
};