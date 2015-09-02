%Include ctkBasePopupWidget.sip

class ctkPopupWidget : ctkBasePopupWidget {

%TypeHeaderCode
#include "ctkPopupWidget.h"
%End

public:
	ctkPopupWidget(QWidget *parent /TransferThis/ = 0);
	virtual ~ctkPopupWidget();

	bool isActive() const;
  	void setActive(bool);
	bool autoShow() const;
	void setAutoShow(bool);
	int showDelay() const;
	void setShowDelay(int);
	bool autoHide() const;
	void setAutoHide(bool);
	int hideDelay() const;
	void setHideDelay(int);
	virtual void hidePopup();

public slots:
    void pinPopup(bool);

protected:
    virtual void leaveEvent(QEvent* event);
    virtual void enterEvent(QEvent* event);
    virtual bool eventFilter(QObject* obj, QEvent* event);
    virtual void setBaseWidget(QWidget* baseWidget);    
};