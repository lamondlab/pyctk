class ctkWorkflowGroupBox : public QWidget
{

%TypeHeaderCode
#include "ctkWorkflowGroupBox.h"
%End

public:
  explicit ctkWorkflowGroupBox(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkWorkflowGroupBox();

  QString title()const;
  QString subTitle()const;
  QString preText()const;
  void setPreText(const QString& newPreText);
  QString postText()const;
  void setPostText(const QString& newPostText);
  QString errorText()const;
  QLayout* clientAreaLayout()const;
  QString titleFormat()const;
  void setTitleFormat(const QString& format);
  QString subTitleFormat()const;
  void setSubTitleFormat(const QString& format);
  QString errorTextFormat()const;
  void setErrorTextFormat(const QString& format);
  bool hideWidgetsOfNonCurrentSteps()const;
  void setHideWidgetsOfNonCurrentSteps(bool newHideWidgetsOfNonCurrentSteps);
  bool errorTextEnabled()const;
  void setErrorTextEnabled(bool newErrorTextEnabled);

public Q_SLOTS:
  virtual void updateGroupBox(ctkWorkflowStep* currentStep);

protected:
  virtual void setSubTitle(const QString& newSubTitle);
  virtual void setErrorText(const QString& newErrorText);

private:
  ctkWorkflowGroupBox(const ctkWorkflowGroupBox &);
  ctkWorkflowGroupBox &operator=(const ctkWorkflowGroupBox &);

};