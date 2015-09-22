/*=========================================================================

  Library:  PyCTK
  Filename: ctkLayoutViewFactory.sip

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

class ctkLayoutViewFactory : public QObject {

%TypeHeaderCode
#include "ctkLayoutViewFactory.h"
%End

public:
  ctkLayoutViewFactory(QObject *parent /TransferThis/ = 0);
  virtual ~ctkLayoutViewFactory();
  virtual QStringList supportedElementNames() const;
  virtual bool isElementSupported(QDomElement layoutElement) const;
  bool useCachedViews() const;
  void setUseCachedViews(bool cache);
  virtual void beginSetupLayout();
  virtual void endSetupLayout();
  virtual void setupView(QDomElement layoutElement, QWidget *view);
  virtual QWidget *viewFromXML(QDomElement layoutElement);
  virtual QList<QWidget *> viewsFromXML(QDomElement layoutElement);
  QList<QWidget *> registeredViews() const;

protected:
  virtual QWidget *createViewFromXML(QDomElement layoutElement);
  virtual QList<QWidget *> createViewsFromXML(QDomElement layoutElement);
  QList<QWidget *> registeredViews(const QDomElement &layoutElement) const;
  virtual void registerView(QDomElement layoutElement, QWidget *view);
  virtual void unregisterView(QDomElement layoutElement, QWidget *view);
  virtual void unregisterView(QWidget *view);
  QDomElement layoutElement(QWidget *view) const;

private:
  ctkLayoutViewFactory(const ctkLayoutViewFactory &);
  ctkLayoutViewFactory &operator=(const ctkLayoutViewFactory &);

};

