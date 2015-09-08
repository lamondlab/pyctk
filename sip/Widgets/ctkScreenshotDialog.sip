class ctkScreenshotDialog : public QDialog
{

%TypeHeaderCode
#include "ctkScreenshotDialog.h"
%End

public:
  ctkScreenshotDialog(QWidget* parent /TransferThis/ = 0);
  virtual ~ctkScreenshotDialog();

  void setWidgetToGrab(QWidget* newWidgetToGrab);
  QWidget* widgetToGrab()const;
  void setBaseFileName(const QString& newImageName);
  QString baseFileName() const;
  void setDirectory(const QString& path);
  QString directory()const;
  void setDelay(int seconds);
  int delay()const;
  void enforceResolution(int width = 300, int height = 300);
  //void enforceResolution(QSize size = QSize(300,300));
  QSize widgetSize();
  void enableTransparency(bool enable = true);

public Q_SLOTS:
  void instantScreenshot();
  void saveScreenshot();

private:
  ctkScreenshotDialog(const ctkScreenshotDialog &);
  ctkScreenshotDialog &operator=(const ctkScreenshotDialog &);  
};