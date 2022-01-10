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

void NarrowDesign::AddQuestion(string groupName, string text)
{
    AllQuestions[++QuestionID_].groupName = groupName;
    AllQuestions[QuestionID_].text = text;
    OptionID_ = 0;
}
void NarrowDesign::AddQuestion2(vector<string> lv, bool type)
{
    QuestionID2_++;
    reverse(lv.begin(), lv.end());
    AllQuestions2[QuestionID2_].level = lv;
    AllQuestions2[QuestionID2_].isClosed = type;
    MaxLevel_ = max(MaxLevel_, (int)lv.size());
}
void NarrowDesign::AddMapBOOL(int curQuestion, string val, Value& arr)
{
    AllQuestions[curQuestion].isClosed = 1;
    AllOptions.push_back({ ++OptionID_, curQuestion, val });

    for (int i = 0; i < (int)arr.Size(); i++)
        if (arr[i] == 1)
            closedResponses.push_back({ i + 1,curQuestion,OptionID_ });

}
void NarrowDesign::AddMapINT(int curQuestion, string val, Value& arr)
{
    for (int i = 0; i < (int)arr.Size(); i++)
        if (arr[i].IsNull())
            openedResponses.push_back({ i + 1,curQuestion,"NULL","INT"});
        else
            openedResponses.push_back({ i + 1,curQuestion,to_string(arr[i].GetInt()),"INT" });

}
void NarrowDesign::AddMapSTR(int curQuestion, string val, Value& arr)
{
    for (int i = 0; i < (int)arr.Size(); i++)
        if (arr[i].IsNull())
            openedResponses.push_back({ i + 1,curQuestion,"NULL","STRING"});
        else
            openedResponses.push_back({ i + 1,curQuestion,arr[i].GetString(),"STRING" });

}
