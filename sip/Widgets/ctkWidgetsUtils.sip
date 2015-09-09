/*=========================================================================

  Library:  PyCTK
  Filename: ctkWidgetsUtils.sip

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

namespace ctk {

%TypeHeaderCode
#include "ctkWidgetsUtils.h"
%End

QString base64HTMLImageTagSrc(const QImage& image);
QImage grabWidget(QWidget* widget, QRect rectangle = QRect());
QImage kwIconToQImage(const unsigned char *data, int width, int height, int pixelSize, unsigned int bufferLength, int options = 0);

};