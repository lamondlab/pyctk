class ctkModalityWidget : public QWidget
{

%TypeHeaderCode
#include "ctkModalityWidget.h"
%End

public:
  explicit ctkModalityWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkModalityWidget();

  QStringList selectedModalities()const;
  void setSelectedModalities(const QStringList& modalities);
  QStringList visibleModalities()const;
  void setVisibleModalities(const QStringList& modalities);
  void selectModality(const QString& modality, bool select = true);
  void showModality(const QString& modality, bool show = true);
  void showAll();
  void hideAll();
  bool areAllModalitiesSelected() const;
  bool areAllModalitiesVisible() const;
  QStringList modalities() const;

public Q_SLOTS:
  void selectAll();
  void unselectAll();

Q_SIGNALS:
  void selectedModalitiesChanged(const QStringList modalities);

protected Q_SLOTS:
  void onAnyChanged(int state);
  void onModalityChecked(bool);

private:
  ctkModalityWidget(const ctkModalityWidget &);
  ctkModalityWidget &operator=(const ctkModalityWidget &); 
};