#ifndef CTK_EXPORT_H
#define CTK_EXPORT_H

#include <QtCore/qglobal.h>

#if defined(CTK_LIBRARY)
#  define CTK_EXPORT Q_DECL_EXPORT
#else
#  define CTK_EXPORT Q_DECL_IMPORT
#endif

#endif // CTK_EXPORT_H
