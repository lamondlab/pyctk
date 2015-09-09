/*=========================================================================

  Library:  PyCTK
  Filename: ctkUtils.sip

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