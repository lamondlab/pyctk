/*=========================================================================

  Library:  PyCTK
  Filename: ctkPathListWidget.sip

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

class ctkPathListWidget : public QListView {

%TypeHeaderCode
#include "ctkPathListWidget.h"
%End

public:
  enum  {
    AbsolutePathRole=33,
  };

  enum PathOption {
    None=0,
    Exists=1,
    Readable=2,
    Writable=4,
    Executable=8,
  };
  typedef QFlags<ctkPathListWidget::PathOption> PathOptions;

  enum Mode {
    Any=0,
    FilesOnly=1,
    DirectoriesOnly=2,
  };

  explicit ctkPathListWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkPathListWidget();
  Mode mode() const;
  QIcon fileIcon() const;
  void setFileIcon(const QIcon &icon);
  void unsetFileIcon();
  QIcon directoryIcon() const;
  void setDirectoryIcon(const QIcon &icon);
  void unsetDirectoryIcon();
  PathOptions fileOptions() const;
  void setFileOptions(PathOptions fileOptions);
  PathOptions directoryOptions() const;
  void setDirectoryOptions(PathOptions directoryOptions);
  bool contains(const QString &path) const;
  QStringList files(bool absolutePath = false) const;
  QStringList directories(bool absolutePath = false) const;
  QStringList paths(bool absolutePath = false) const;
  QStringList selectedPaths(bool absolutePath = false) const;
  QString currentPath(bool absolutePath = false) const;
  int count() const;
  QString path(int row) const;
  QStandardItem *item(int row) const;
  QStandardItem *item(const QString &absolutePath) const;
  QString pathAt(const QPoint &point) const;
  QStandardItem *itemAt(const QPoint &point) const;
  QString pathAt(int x, int y) const;
  QStandardItem *itemAt(int x, int y) const;
  int row(const QString &path) const;
  bool editPath(const QString &oldPath, const QString &newPath);
  bool editPath(const QModelIndex &index, const QString &newPath);
  bool isFile(const QString &path) const;
  bool isDirectory(const QString &path) const;

public slots:
  void setMode(Mode mode);
  bool addPath(const QString &path);
  QStringList addPaths(const QStringList &paths);
  void setPaths(const QStringList &paths);
  bool removePath(const QString &path);
  QStringList removePaths(const QStringList &paths);
  void removeSelectedPaths();
  void clear();

signals:
  void pathsChanged(const QStringList &added, const QStringList &removed);
  void pathClicked(const QString &absolutePath);
  void pathDoubleClicked(const QString &absolutePath);
  void pathActivated(const QString &absolutePath);
  void currentPathChanged(const QString &currentAbsolutePath, const QString &previousAbsolutePath);

private:
  void setModel(QAbstractItemModel *model);
  
  ctkPathListWidget(const ctkPathListWidget &);
  ctkPathListWidget &operator=(const ctkPathListWidget &);

};

