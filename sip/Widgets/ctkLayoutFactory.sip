class ctkLayoutFactory: public ctkLayoutManager
{

%TypeHeaderCode
#include "ctkLayoutFactory.h"
%End

public:
  ctkLayoutFactory(QObject* parent /TransferThis/ = 0);
  explicit ctkLayoutFactory(QWidget* viewport, QObject* parent /TransferThis/);
  virtual ~ctkLayoutFactory();

  void registerViewFactory(ctkLayoutViewFactory* factory);
  void unregisterViewFactory(ctkLayoutViewFactory* factory);
  QList<ctkLayoutViewFactory*> registeredViewFactories()const;

protected:
  virtual void setupLayout();
  virtual QWidget* viewFromXML(QDomElement layoutElement);
  virtual QList<QWidget*> viewsFromXML(QDomElement layoutElement);
  virtual void setupView(QDomElement layoutElement, QWidget* view);
  QList<ctkLayoutViewFactory*> viewFactories(QDomElement viewElement)const;

private:
  ctkLayoutFactory(const ctkLayoutFactory &);
  ctkLayoutFactory &operator=(const ctkLayoutFactory &); 
};