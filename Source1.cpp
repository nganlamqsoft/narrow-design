#include <iostream>
#include <cstdio>
#include <vector>
#include <string>
#include <string.h>
#include <map>
#include <iomanip>
#include <fstream>

#include "rapidjson/document.h"
#include "rapidjson/istreamwrapper.h"
#include "rapidjson/writer.h"
#include "rapidjson/stringbuffer.h"
#include "rapidjson/ostreamwrapper.h"

#pragma warning (disable : 4996)

using namespace rapidjson;
using namespace std;

struct AllQuestionsType {
	string text, groupName;
	bool isClosed;
};
struct AllOptionsType {
	int id, questionID;
	string text;
};
struct ClosedResponsesType {
	int id, questionID, optionID;
};
struct OpenedResponsesType {
	int id, questionID;
	string responseText, responseType;
};


int QuestionID = 0, OptionID = 0;

map<int, AllQuestionsType> AllQuestions;
vector<AllOptionsType> AllOptions;
vector<ClosedResponsesType> closedResponses;
vector<OpenedResponsesType> openedResponses;

Document d;
void addQuestion(string groupName, string text)
{
	AllQuestions[++QuestionID].groupName = groupName;
	AllQuestions[QuestionID].text = text;
	OptionID = 0;
}
void addMapBOOL(int curQuestion, string val, Value& arr)
{
	AllQuestions[curQuestion].isClosed = 1;
	AllOptions.push_back({ ++OptionID, curQuestion, val });

	for (int i = 0; i < (int)arr.Size(); i++)
		if (arr[i] == 1)
			closedResponses.push_back({ i + 1,curQuestion,OptionID });
}
void addMapINT(int curQuestion, string val, Value& arr)
{
	for (int i = 0; i < (int)arr.Size(); i++)
		openedResponses.push_back({ i + 1,curQuestion,to_string(arr[i].GetInt()),"INT" });
}
void addMapSTR(int curQuestion, string val, Value& arr)
{
	for (int i = 0; i < (int)arr.Size(); i++)
		openedResponses.push_back({ i + 1,curQuestion,arr[i].GetString(),"STRING" });
}
int dfs(string str, Value& u, int curQuestion)
{
	int cnt = 1;
	string Type = u["type"].GetString();
	string Label = u["label"].GetString();


	if (Type == "TABLE") {
		Value& val = u["value"];
		int theMax = 0;
		for (int i = 0; i < (int)val.Size(); i++) {
			Value& v = val[i];
			string TypeV = v["type"].GetString();
			string LabelV = v["label"].GetString();
			if (TypeV == "TABLE") {
				addQuestion(str, LabelV);
				theMax = max(theMax, dfs(LabelV, v, QuestionID));
			}
			else {
				theMax = max(theMax, dfs(str, v, curQuestion));
			}
		}
		cnt += theMax;
	}
	if (cnt == 1) {
		Value& ValArray = u["value"];
		if (Type == "INT")
			addMapINT(curQuestion, Label, ValArray);
		if (Type == "BOOL")
			addMapBOOL(curQuestion, Label, ValArray);
		if (Type == "STRING")
			addMapSTR(curQuestion, Label, ValArray);
	}
	return cnt;
}

void GetJson()
{
	ifstream ifs("covid-segmentation-data.json");
	IStreamWrapper isw(ifs);

	d.ParseStream(isw);

	StringBuffer buffer;
	Writer<StringBuffer> writer(buffer);

	d.Accept(writer);

	string jsonStr(buffer.GetString());
}
void Solution()
{
	Value& a = d["result"];
	Value& b = a["value"];
	int size = b.Size();
	for (int i = 0; i < size; i++) {
		string Label = b[i]["label"].GetString();

		addQuestion("NULL", Label);

		dfs(Label, b[i], QuestionID);
	}
}
string modifyString(string x)
{
	string y = "";
	for (int i = 0; i < (int)x.size(); i++)
		if (x[i] == '\'')
			y += "''";
		else y += x[i];
	return y;
}
void OutputAllQuestionsTable(string output)
{
	ofstream out;
	out.open(output);

	out << "DROP TABLE IF EXISTS all_questions;\n";

	out << "CREATE TABLE all_questions(";
	out << "\n\tQuestionID INT,";
	out << "\n\tQuestionText VARCHAR(255),";
	out << "\n\tGroupName VARCHAR(255),";
	out << "\n\tIsClosed BOOLEAN";
	out << "\n);\n";

	for (auto x : AllQuestions) {
		out << "INSERT INTO all_questions VALUES (";
		out << x.first << ",'" << modifyString(x.second.text) << "','";
		out << modifyString(x.second.groupName) << "'," << (x.second.isClosed ? "TRUE" : "FALSE") << ");\n";
	}

	out << "SELECT * FROM all_questions;";

	out.close();
}
void OutputAllOptionsTable(string output)
{
	ofstream out;
	out.open(output);

	out << "DROP TABLE IF EXISTS all_options;\n";

	out << "CREATE TABLE all_options(";
	out << "\n\tQuestionID INT,";
	out << "\n\tOptionID INT,";
	out << "\n\tOptionText varchar(255)";
	out << "\n);\n";

	for (auto x : AllOptions) {
		out << "INSERT INTO all_options VALUES (";
		out << x.questionID << "," << x.id << ",'" << modifyString(x.text) << "');\n";
	}

	out << "SELECT * FROM all_options;";

	out.close();
}
void OutputAllClosedResponsesTable(string output)
{
	ofstream out;
	out.open(output);

	out << "DROP TABLE IF EXISTS all_closed_responses;\n";

	out << "CREATE TABLE all_closed_responses(";
	out << "\n\tParticipantID INT,";
	out << "\n\tQuestionID INT,";
	out << "\n\tOptionID INT";
	out << "\n);\n";

	for (auto x : closedResponses) {
		out << "INSERT INTO all_closed_responses VALUES (";
		out << x.id << "," << x.questionID << ",'" << x.optionID << "');\n";
	}

	out << "SELECT * FROM all_closed_responses;";

	out.close();
}
void OutputAllOpenedResponsesTable(string output)
{
	ofstream out;
	out.open(output);

	out << "DROP TABLE IF EXISTS all_opened_responses;\n";

	out << "CREATE TABLE all_opened_responses(";
	out << "\n\tParticipantID INT,";
	out << "\n\tQuestionID INT,";
	out << "\n\tResponseText varchar(255),";
	out << "\n\tResponseType varchar(255)";
	out << "\n);\n";

	for (auto x : openedResponses) {
		out << "INSERT INTO all_opened_responses VALUES (";
		out << x.id << "," << x.questionID << ",'" << modifyString(x.responseText) << "','" << x.responseType << "');\n";
	}

	out << "SELECT * FROM all_opened_responses;";

	out.close();
}
int main() {
	GetJson();
	Solution();
	OutputAllQuestionsTable("AllQuestionsTable.sql");
	OutputAllOptionsTable("AllOptionsTable.sql");
	OutputAllClosedResponsesTable("AllClosedResponsesTable.sql");
	OutputAllOpenedResponsesTable("AllOpenedResponsesTable.sql");
	return 0;
}
