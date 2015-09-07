class ctkDateRangeWidget : public QWidget
{

%TypeHeaderCode
#include "ctkDateRangeWidget.h"
%End

public:
  explicit ctkDateRangeWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkDateRangeWidget();

  void setDisplayTime(bool includeTime);
  bool displayTime()const;
  QDateTime startDateTime() const;
  QDateTime endDateTime() const;
  bool isAnyDate()const;

public Q_SLOTS:
  void setStartDateTime(QDateTime start);
  void setEndDateTime(QDateTime end);
  void setDateTimeRange(QDateTime start, QDateTime end);
  void setDateRange(QDate start, QDate end);
  void setAnyDate();
  void setToday();
  void setYesterday();
  void setLastWeek();
  void setLastMonth();
  void setSelectRange();

Q_SIGNALS:
  void startDateTimeChanged(const QDateTime& value);
  void endDateTimeChanged(const QDateTime& value);

protected Q_SLOTS:
  void onDateTimeChanged();

private:
  ctkDateRangeWidget(const ctkDateRangeWidget &);
  ctkDateRangeWidget &operator=(const ctkDateRangeWidget &);  
};