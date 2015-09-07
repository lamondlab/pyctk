class ctkPathLineEdit: public QWidget
{

%TypeHeaderCode
#include "ctkPathLineEdit.h"
%End

public:
  enum Filter { Dirs        = 0x001,
                Files       = 0x002,
                Drives      = 0x004,
                NoSymLinks  = 0x008,
                AllEntries  = 0x007 // Dirs | Files | Drives,
                TypeMask    = 0x00f,
                Readable    = 0x010,
                Writable    = 0x020,
                Executable  = 0x040,
                PermissionMask    = 0x070,
                Modified    = 0x080,
                Hidden      = 0x100,
                System      = 0x200,
                AccessMask  = 0x3F0,
                AllDirs       = 0x400,
                CaseSensitive = 0x800,
                NoDotAndDotDot = 0x1000, // ### Qt5 NoDotAndDotDot = NoDot|NoDotDot
                NoDot         = 0x2000,
                NoDotDot      = 0x4000,
                NoFilter = -1
  };
  //Q_DECLARE_FLAGS(Filters, Filter)
  typedef QFlags<ctkPathLineEdit::Filter> Filters;


  enum SizeAdjustPolicy
  {
    AdjustToContents,
    AdjustToContentsOnFirstShow,
    AdjustToMinimumContentsLength
  };

  ctkPathLineEdit(QWidget *parent /TransferThis/ = 0);
  ctkPathLineEdit( const QString& label,
                   const QStringList& nameFilters,
                   Filters filters = ctkPathLineEdit::AllEntries,
                   QWidget *parent /TransferThis/ = 0 );
  virtual ~ctkPathLineEdit();

  QString currentPath()const;
  void setLabel(const QString &label);
  const QString& label()const;
  void setNameFilters(const QStringList &nameFilters);
  const QStringList& nameFilters()const;
  void setFilters(const Filters& filters);
  Filters filters()const;
  void setOptions(const QFileDialog::Options& options);
  const QFileDialog::Options& options()const;
  void setCurrentFileExtension(const QString& extension);
  QString settingKey()const;
  void setSettingKey(const QString& key);
  bool showBrowseButton()const;
  void setShowBrowseButton(bool visible);
  bool showHistoryButton()const;
  void setShowHistoryButton(bool visible);
  SizeAdjustPolicy sizeAdjustPolicy() const;
  void setSizeAdjustPolicy(SizeAdjustPolicy policy);
  int minimumContentsLength()const;
  void setMinimumContentsLength(int lenght);
  QComboBox* comboBox() const;
  virtual QSize minimumSizeHint()const;
  virtual QSize sizeHint()const;

Q_SIGNALS:
  void validInputChanged(bool);
  void currentPathChanged(const QString& path);

public Q_SLOTS:
  void setCurrentPath(const QString& path);
  void browse();
  void retrieveHistory();
  void addCurrentPathToHistory();

protected Q_SLOTS:
  void setCurrentDirectory(const QString& directory);
  void updateHasValidInput();

private:
  ctkPathLineEdit(const ctkPathLineEdit &);
  ctkPathLineEdit &operator=(const ctkPathLineEdit &);
};