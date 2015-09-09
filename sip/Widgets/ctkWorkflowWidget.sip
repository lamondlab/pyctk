class ctkWorkflowWidget : public QWidget
{

%TypeHeaderCode
#include "ctkWorkflowWidget.h"
%End

public:
  explicit ctkWorkflowWidget(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkWorkflowWidget();

  /*Q_INVOKABLE*/ virtual ctkWorkflow* workflow()const;
  /*Q_INVOKABLE*/ virtual void setWorkflow(ctkWorkflow* newWorkflow);

  /*Q_INVOKABLE*/ ctkWorkflowWidgetStep* widgetStep(const QString& id)const;
  /*Q_INVOKABLE*/ virtual ctkWorkflowGroupBox* workflowGroupBox()const;
  bool showButtonBoxWidget()const;
  void setShowButtonBoxWidget(bool newShowButtonBoxWidget);
  /*Q_INVOKABLE*/ ctkWorkflowButtonBoxWidget* buttonBoxWidget()const;
  static void formatButton(QAbstractButton* button, const QString& format, ctkWorkflowWidgetStep* step);
  static QString formatText(const QString& format, ctkWorkflowWidgetStep* step);

public Q_SLOTS:
  virtual void onCurrentStepChanged(ctkWorkflowStep* currentStep);

protected Q_SLOTS:
  void onStepRegistered(ctkWorkflowStep* step);

protected:
  virtual void updateStepUI(ctkWorkflowStep* currentStep);
  void updateButtonBoxUI(ctkWorkflowStep* currentStep);
  static QVariant buttonItem(QString formatItem, ctkWorkflowWidgetStep* step);
  static QMap<QString, QVariant> parse(const QString& format, ctkWorkflowWidgetStep* step);

private:
  ctkWorkflowWidget(const ctkWorkflowWidget &);
  ctkWorkflowWidget &operator=(const ctkWorkflowWidget &); 
};