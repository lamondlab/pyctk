// %Include vector.sip

%ModuleCode
#include "ctkUtils.h"
%End

namespace ctk
{

%TypeHeaderCode
#include "ctkUtils.h"
%End

	//void qListToSTLVector(const QStringList& list, std::vector<char*>& vector);
	//void qListToSTLVector(const QStringList& list, std::vector<std::string>& vector);
	//void stlVectorToQList(const std::vector<std::string>& vector, QStringList& list);

	QStringList nameFilterToExtensions(const QString& nameFilter);
	QStringList nameFiltersToExtensions(const QStringList& nameFilters);
	QString extensionToRegExp(const QString& extension);
	QRegExp nameFiltersToRegExp(const QStringList& nameFilters);
	int significantDecimals(double value, int defaultDecimals = -1);
	int orderOfMagnitude(double value);
	double closestPowerOfTen(double value);
	bool removeDirRecursively(const QString & dirName);
	bool copyDirRecursively(const QString &srcPath, const QString &dstPath);
	QString qtHandleToString(Qt::HANDLE handle);
	qint64 msecsTo(const QDateTime& t1, const QDateTime& t2);

};