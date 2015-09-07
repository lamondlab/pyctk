// class ctkIconEnginePlugin : public QIconEnginePlugin
// {

// %TypeHeaderCode
// #include "ctkIconEnginePlugin.h"
// %End

// public:
//   ctkIconEnginePlugin(QObject* parent /TransferThis/ = 0);
//   virtual ~ctkIconEnginePlugin();

//   virtual QIconEngine* create(const QString& filename=QString());
//   virtual QStringList keys() const;
//   void setSizeDirectories(const QStringList& sizeDirectories);
//   QStringList sizeDirectories() const;

// private:
//   ctkIconEnginePlugin(const ctkIconEnginePlugin &);
//   ctkIconEnginePlugin &operator=(const ctkIconEnginePlugin &);    
// };

class ctkIconEngine: public ctkPixmapIconEngine
{

%TypeHeaderCode
#include "ctkIconEnginePlugin.h"
%End

public:
  ctkIconEngine();
  virtual ~ctkIconEngine();

  virtual void addFile(const QString& fileName, const QSize& size,
                       QIcon::Mode mode, QIcon::State state);

  void setSizeDirectories(const QStringList& sizeDirectories);
  QStringList sizeDirectories() const;
  virtual QString key() const;

private:
  ctkIconEngine(const ctkIconEngine &);
  ctkIconEngine &operator=(const ctkIconEngine &);    
};