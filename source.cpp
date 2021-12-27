#include <iostream>
#include <cstdio>
#include <vector>
#include <map>
#include <iomanip>
#include <fstream>
#include <string>
#include <string.h>

#include "rapidjson/document.h"
#include "rapidjson/istreamwrapper.h"
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/ostreamwrapper.h"
#include "NarrowDesign.h"

#pragma warning (disable:4996)

using namespace rapidjson;
using namespace std;

int main()
{
	NarrowDesign SQLTable;
	SQLTable.GetJson("covid-segmentation-data.json");
	SQLTable.Solution();
	SQLTable.OutputAllQuestionsTable("outputFiles\\AllQuestionsTable.sql");
	SQLTable.OutputAllQuestionsTable2("outputFiles\\AllQuestionsTable2.sql");
	SQLTable.OutputAllOptionsTable("outputFiles\\AllOptionsTable.sql");
	SQLTable.OutputAllClosedResponsesTable("outputFiles\\AllClosedResponsesTable.sql");
	SQLTable.OutputAllOpenedResponsesTable("outputFiles\\AllOpenedResponsesTable.sql");
	return 0;
}
