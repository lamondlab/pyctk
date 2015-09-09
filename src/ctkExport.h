/*=========================================================================

  Library:  PyCTK
  Filename: ctkExport.h

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

#ifndef CTK_EXPORT_H
#define CTK_EXPORT_H

#include <QtCore/qglobal.h>

#if defined(Q_OS_WIN)
#define CTK_EXPORT
#else

#if defined(CTK_LIBRARY)
#  define CTK_EXPORT Q_DECL_EXPORT
#else
#  define CTK_EXPORT Q_DECL_IMPORT
#endif

#endif

#endif // CTK_EXPORT_H
