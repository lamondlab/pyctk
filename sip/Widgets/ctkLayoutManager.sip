/*=========================================================================

  Library:  PyCTK
  Filename: ctkLayoutManager.sip

  Copyright (c) 2015 Lamond Lab

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0.txt

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.

=========================================================================*/

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