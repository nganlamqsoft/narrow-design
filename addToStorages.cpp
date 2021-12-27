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
using namespace rapidjson;
using namespace std;

void NarrowDesign::addQuestion(string groupName, string text)
{
    AllQuestions[++QuestionID].groupName = groupName;
    AllQuestions[QuestionID].text = text;
    OptionID = 0;
}
void NarrowDesign::addQuestion2(vector<string> lv, bool type)
{
    QuestionID2++;
    reverse(lv.begin(),lv.end());
    AllQuestions2[QuestionID2].level = lv;
    AllQuestions2[QuestionID2].isClosed = type;
    maxLevel = max(maxLevel,(int)lv.size());
}
void NarrowDesign::addMapBOOL(int curQuestion, string val, Value& arr)
{
    AllQuestions[curQuestion].isClosed=1;
	AllOptions.push_back({++OptionID, curQuestion, val});

	for (int i = 0; i < (int)arr.Size(); i++)
		if (arr[i] == 1)
            closedResponses.push_back({i+1,curQuestion,OptionID});
}
void NarrowDesign::addMapINT(int curQuestion, string val, Value& arr)
{
	for (int i = 0; i < (int)arr.Size(); i++)
		openedResponses.push_back({i+1,curQuestion,to_string(arr[i].GetInt()),"INT"});
}
void NarrowDesign::addMapSTR(int curQuestion, string val, Value& arr)
{
	for (int i = 0; i < (int)arr.Size(); i++)
		openedResponses.push_back({i+1,curQuestion,arr[i].GetString(),"STRING"});
}
