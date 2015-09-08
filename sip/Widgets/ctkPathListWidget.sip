class ctkPathListWidget : public QListView
{

%TypeHeaderCode
#include "ctkPathListWidget.h"
%End

public:

  enum
  {
    AbsolutePathRole = 33 // Qt::UserRole + 1
  };

  enum PathOption
  {
    None       = 0x00,
    Exists     = 0x01,
    Readable   = 0x02,
    Writable   = 0x04,
    Executable = 0x08
  };
  //Q_DECLARE_FLAGS(PathOptions, PathOption)
  typedef QFlags<ctkPathListWidget::PathOption> PathOptions;

  enum Mode
  {
    Any = 0,
    FilesOnly,
    DirectoriesOnly
  };

  explicit ctkPathListWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkPathListWidget();

  Mode mode() const;
  QIcon fileIcon() const;
  void setFileIcon(const QIcon& icon);
  void unsetFileIcon();
  QIcon directoryIcon() const;
  void setDirectoryIcon(const QIcon& icon);
  void unsetDirectoryIcon();
  PathOptions fileOptions() const;
  void setFileOptions(PathOptions fileOptions);
  PathOptions directoryOptions() const;
  void setDirectoryOptions(PathOptions directoryOptions);
  bool contains(const QString& path)const;
  QStringList files(bool absolutePath = false) const;
  QStringList directories(bool absolutePath = false) const;
  QStringList paths(bool absolutePath = false) const;
  QStringList selectedPaths(bool absolutePath = false) const;
  QString currentPath(bool absolutePath = false) const;
  int count() const;
  QString path(int row) const;
  QStandardItem* item(int row) const;
  QStandardItem* item(const QString& absolutePath) const;
  QString pathAt(const QPoint& point) const;
  QStandardItem* itemAt(const QPoint& point) const;
  QString pathAt(int x, int y) const; // { return pathAt(QPoint(x, y)); }
  QStandardItem* itemAt(int x, int y) const; // { return itemAt(QPoint(x, y)); }
  int row(const QString& path) const;
  bool editPath(const QString& oldPath, const QString& newPath);
  bool editPath(const QModelIndex& index, const QString& newPath);
  bool isFile(const QString& path) const;
  bool isDirectory(const QString& path) const;

public Q_SLOTS:
  void setMode(Mode mode);
  bool addPath(const QString& path);
  QStringList addPaths(const QStringList& paths);
  void setPaths(const QStringList& paths);
  bool removePath(const QString& path);
  QStringList removePaths(const QStringList& paths);
  void removeSelectedPaths();
  void clear();

Q_SIGNALS:
  void pathsChanged(const QStringList& added, const QStringList& removed);
  void pathClicked(const QString& absolutePath);
  void pathDoubleClicked(const QString& absolutePath);
  void pathActivated(const QString& absolutePath);
  void currentPathChanged(const QString& currentAbsolutePath, const QString& previousAbsolutePath);

private:
  void setModel(QAbstractItemModel *model);

  ctkPathListWidget(const ctkPathListWidget &);
  ctkPathListWidget &operator=(const ctkPathListWidget &); 
};