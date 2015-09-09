/*=========================================================================

  Library:  PyCTK
  Filename: ctkDateRangeWidget.sip

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