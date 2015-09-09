/*=========================================================================

  Library:  PyCTK
  Filename: ctkThumbnailListWidget.sip

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

class ctkThumbnailListWidget : public QWidget
{

%TypeHeaderCode
#include "ctkThumbnailListWidget.h"
%End

public:
  explicit ctkThumbnailListWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkThumbnailListWidget();

  void addThumbnail(const QPixmap& thumbnail, const QString& label = QString());
  void addThumbnails(const QList<QPixmap>& thumbnails);
  void setCurrentThumbnail(int index);
  int currentThumbnail();
  void clearThumbnails();
  void setFlow(Qt::Orientation orientation);
  Qt::Orientation flow()const;
  QSize thumbnailSize()const;
  virtual bool eventFilter(QObject* watched, QEvent* event);

public Q_SLOTS:
  void setThumbnailSize(QSize size);

Q_SIGNALS:
  void selected(const ctkThumbnailLabel& widget);
  void doubleClicked(const ctkThumbnailLabel& widget);

protected Q_SLOTS:
  void onThumbnailSelected(const ctkThumbnailLabel& widget);
  void updateLayout();

protected:
  virtual void resizeEvent(QResizeEvent* event);

private:
  ctkThumbnailListWidget(const ctkThumbnailListWidget &);
  ctkThumbnailListWidget &operator=(const ctkThumbnailListWidget &);

};