/*=========================================================================

  Library:  PyCTK
  Filename: ctkWorkflowWidget.sip

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

class ctkWorkflowWidget : public QWidget {

%TypeHeaderCode
#include "ctkWorkflowWidget.h"
%End

public:
  explicit ctkWorkflowWidget(QWidget *parent /TransferThis/ = 0);
  virtual ~ctkWorkflowWidget();
  virtual ctkWorkflow *workflow() const;
  virtual void setWorkflow(ctkWorkflow *newWorkflow);
  ctkWorkflowWidgetStep *widgetStep(const QString &id) const;
  virtual ctkWorkflowGroupBox *workflowGroupBox() const;
  bool showButtonBoxWidget() const;
  void setShowButtonBoxWidget(bool newShowButtonBoxWidget);
  ctkWorkflowButtonBoxWidget *buttonBoxWidget() const;
  static void formatButton(QAbstractButton *button, const QString &format, ctkWorkflowWidgetStep *step);
  static QString formatText(const QString &format, ctkWorkflowWidgetStep *step);

public slots:
  virtual void onCurrentStepChanged(ctkWorkflowStep *currentStep);

protected:
  virtual void updateStepUI(ctkWorkflowStep *currentStep);
  void updateButtonBoxUI(ctkWorkflowStep *currentStep);
  static QVariant buttonItem(QString formatItem, ctkWorkflowWidgetStep *step);
  static QMap<QString, QVariant> parse(const QString &format, ctkWorkflowWidgetStep *step);

protected slots:
  void onStepRegistered(ctkWorkflowStep *step);

private:
  ctkWorkflowWidget(const ctkWorkflowWidget &);
  ctkWorkflowWidget &operator=(const ctkWorkflowWidget &);

};

