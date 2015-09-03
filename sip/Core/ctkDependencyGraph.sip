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