class ctkLayoutViewFactory: public QObject
{

%TypeHeaderCode
#include "ctkLayoutViewFactory.h"
%End

public:
  ctkLayoutViewFactory(QObject* parent /TransferThis/ = 0);
  virtual ~ctkLayoutViewFactory();

  virtual QStringList supportedElementNames() const;
  virtual bool isElementSupported(QDomElement layoutElement) const;
  bool useCachedViews() const;
  void setUseCachedViews(bool cache);
  virtual void beginSetupLayout();
  virtual void endSetupLayout();
  virtual void setupView(QDomElement layoutElement, QWidget* view);
  virtual QWidget* viewFromXML(QDomElement layoutElement);
  virtual QList<QWidget*> viewsFromXML(QDomElement layoutElement);
  QList<QWidget*> registeredViews() const;

protected: 
  virtual QWidget* createViewFromXML(QDomElement layoutElement);
  virtual QList<QWidget*> createViewsFromXML(QDomElement layoutElement);
  QList<QWidget*> registeredViews(const QDomElement& layoutElement) const;
  virtual void registerView(QDomElement layoutElement, QWidget* view);
  virtual void unregisterView(QDomElement layoutElement, QWidget* view);
  virtual void unregisterView(QWidget* view);
  QDomElement layoutElement(QWidget* view) const;

private:
  ctkLayoutViewFactory(const ctkLayoutViewFactory &);
  ctkLayoutViewFactory &operator=(const ctkLayoutViewFactory &); 
};