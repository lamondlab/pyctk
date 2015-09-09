/*=========================================================================

  Library:  PyCTK
  Filename: ctkDependencyGraph.sip

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

class ctkDependencyGraph
{

%TypeHeaderCode
#include "ctkDependencyGraph.h"
%End

public:
  ctkDependencyGraph(int nvertices);
  virtual ~ctkDependencyGraph();
  
  void printAdditionalInfo() const;
  void printGraph() const;
  int numberOfVertices() const;
  int numberOfEdges() const;
  bool checkForCycle();
  bool cycleDetected() const;
  int cycleOrigin() const;
  int cycleEnd() const;
  void setVerbose(bool verbose);
  void insertEdge(int from, int to);

  //void findPaths(int from, int to, std::list<std::list<int>* >& paths);
  //void findPath(int from, int to, std::list<int>& path);
  //void setEdgeListToExclude(const std::list<int>& list);
  
  virtual bool shouldExcludeEdge(int edge) const;
  virtual void processEdge(int /*from*/, int /*to*/);//{}
  //bool topologicalSort(std::list<int>& sorted, int rootId = -1);
  //void sourceVertices(std::list<int>& sources);

private:
  ctkDependencyGraph(const ctkDependencyGraph &);
  ctkDependencyGraph &operator=(const ctkDependencyGraph &);  
};