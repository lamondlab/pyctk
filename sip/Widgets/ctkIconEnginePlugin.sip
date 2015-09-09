/*=========================================================================

  Library:  PyCTK
  Filename: ctkIconEnginePlugin.sip

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