namespace ctk {

%TypeHeaderCode
#include "ctkWidgetsUtils.h"
%End

QString base64HTMLImageTagSrc(const QImage& image);
QImage grabWidget(QWidget* widget, QRect rectangle = QRect());
QImage kwIconToQImage(const unsigned char *data, int width, int height, int pixelSize, unsigned int bufferLength, int options = 0);

};