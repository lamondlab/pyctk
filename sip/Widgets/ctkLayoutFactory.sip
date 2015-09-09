/*=========================================================================

  Library:  PyCTK
  Filename: ctkLayoutFactory.sip

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