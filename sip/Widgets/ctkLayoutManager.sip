%Include ctkLayoutManagerPrivate.sip

class ctkLayoutManager: public QObject
{

%TypeHeaderCode
#include "ctkLayoutManager.h"
%End

public:
  ctkLayoutManager(QObject* parent /TransferThis/ = 0);
  explicit ctkLayoutManager(QWidget* viewport, QObject* parent /TransferThis/);
  virtual ~ctkLayoutManager();

  void setViewport(QWidget* widget);
  /*Q_INVOKABLE*/ QWidget* viewport()const;
  int spacing()const;
  void setSpacing(int spacing);
  void refresh();

Q_SIGNALS:
  void layoutChanged();

protected:
  ctkLayoutManager(ctkLayoutManagerPrivate* ptr, QWidget* viewport, QObject* parent /TransferThis/);
  virtual void onViewportChanged();
  void clearLayout();
  virtual void setupLayout();
  virtual void setLayout(const QDomDocument& newLayout);
  const QDomDocument layout()const;
  virtual QLayoutItem* processElement(QDomElement element);
  virtual QLayoutItem* processLayoutElement(QDomElement layoutElement);
  virtual QLayoutItem* layoutFromXML(QDomElement layoutElement);
  void processItemElement(QDomElement layoutElement, QLayoutItem* layoutItem);
  virtual void addChildItemToLayout(QDomElement itemElement, QLayoutItem* childItem, QLayoutItem* layoutItem);
  QWidgetItem* widgetItemFromXML(QDomElement layoutElement);
  virtual void setupView(QDomElement layoutElement, QWidget* view);
  QList<QLayoutItem*> widgetItemsFromXML(QDomElement layoutElement);
  virtual QWidget* viewFromXML(QDomElement layoutElement) = 0;
  virtual QList<QWidget*> viewsFromXML(QDomElement layoutElement);

private:
  ctkLayoutManager(const ctkLayoutManager &);
  ctkLayoutManager &operator=(const ctkLayoutManager &);  
};