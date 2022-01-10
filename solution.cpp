#include <iostream>
#include <cstdio>
#include <vector>
#include <map>
#include <iomanip>
#include <fstream>
#include <algorithm>
#include <string>
#include <string.h>

#include "rapidjson/document.h"
#include "rapidjson/istreamwrapper.h"
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/ostreamwrapper.h"
#include "NarrowDesign.h"

#define _BOOL "BOOL"
#define _TABLE "TABLE"
#define _INT "INT"
#define _STRING "STRING"
#define _AddResponseValue 1
#define _AddQuestionValue 1

using namespace rapidjson;
using namespace std;

int NarrowDesign::dfs(string str, Value& u, int curQuestion, vector<string> lv)
{
	int cnt = 1;
	bool isClosed = 1;
	string Type = u["type"].GetString();
	string Label = u["label"].GetString();


	if (Type == _TABLE) {
		Value& val = u["value"];
		int theMax = 0;
		for (int i = 0; i < (int)val.Size(); i++) {
			Value& v = val[i];
			string TypeV = v["type"].GetString();
			string LabelV = v["label"].GetString();
			if (TypeV != _BOOL) {
				AddQuestion(str, LabelV);
				lv.push_back(LabelV);
				theMax = max(theMax, dfs(LabelV, v, QuestionID_, lv));
				lv.pop_back();
			}
			else {
				theMax = max(theMax, dfs(str, v, curQuestion, lv));
			}
		}
		cnt += theMax;
	}
	if (cnt == _AddResponseValue) {
		Value& ValArray = u["value"];
		if (Type == _INT) {
			AddMapINT(curQuestion, Label, ValArray);
			++cnt; isClosed = 0;
		}
		if (Type == _BOOL)
			AddMapBOOL(curQuestion, Label, ValArray);
		if (Type == _STRING) {
			AddMapSTR(curQuestion, Label, ValArray);
			++cnt; isClosed = 0;
		}
	}
	if (cnt == _AddQuestionValue) {
		AddQuestion2(lv, isClosed);
	}
	return cnt;
}

void NarrowDesign::GetJson(string input)
{
	ifstream inp;
	inp.open(input);
	IStreamWrapper isw(inp);

	JsonObject_.ParseStream(isw);

	StringBuffer buffer;
	Writer<StringBuffer> writer(buffer);

	JsonObject_.Accept(writer);

	string jsonStr(buffer.GetString());
}
void NarrowDesign::Solution()
{
	Value& root = JsonObject_["result"];
	Value& root_value = root["value"];
	int size = root_value.Size();
	for (int i = 0; i < size; i++) {
		string Label = root_value[i]["label"].GetString();
		vector<string> lv;

		AddQuestion("NULL", Label);
		lv.push_back(Label);

		dfs(Label, root_value[i], QuestionID_, lv);
	}
}
