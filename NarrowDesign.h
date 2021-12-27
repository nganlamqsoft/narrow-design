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

using namespace rapidjson;
using namespace std;

class NarrowDesign{
private:
    struct AllQuestionsType{
        string text,groupName;
        bool isClosed;
    };
    struct AllQuestionsType2{
        vector<string> level;
        bool isClosed;
    };
    struct AllOptionsType{
        int id,questionID;
        string text;
    };
    struct ClosedResponsesType{
        int id,questionID,optionID;
    };
    struct OpenedResponsesType{
        int id,questionID;
        string responseText, responseType;
    };


    int QuestionID = 0, QuestionID2 = 0, OptionID = 0, maxLevel = 0;

    map<int, AllQuestionsType> AllQuestions;
    map<int, AllQuestionsType2 >AllQuestions2;
    vector<AllOptionsType> AllOptions;
    vector<ClosedResponsesType> closedResponses;
    vector<OpenedResponsesType> openedResponses;

    Document d;

public:
    //Add Row and Column to SQL tables' storages
    void addQuestion(string groupName, string text);
    void addQuestion2(vector<string> lv, bool type);
    void addMapBOOL(int curQuestion, string val, Value& arr);
    void addMapINT(int curQuestion, string val, Value& arr);
    void addMapSTR(int curQuestion, string val, Value& arr);

    //Go along the edge of the tree to find out nodes
    int dfs(string str, Value& u, int curQuestion, vector<string> lv);

    //Get JSON structure from file
    void GetJson(string input);

    void Solution();
    void Solution2();

    //Before add text to SQL tables, we need to modify it
    string modifyString (string x);

    //Output SQL tables into files with SQL scripts
    void OutputAllQuestionsTable(string output);
    void OutputAllQuestionsTable2(string output);
    void OutputAllOptionsTable(string output);
    void OutputAllClosedResponsesTable(string output);
    void OutputAllOpenedResponsesTable(string output);


};
