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
string NarrowDesign::modifyString (string x)
{
    string y="";
    for (int i=0;i<(int)x.size();i++)
        if (x[i]=='\'')
            y+="''";
        else y+=x[i];
    return y;
}
void NarrowDesign::OutputAllQuestionsTable(string output)
{
    ofstream out;
    out.open(output);

    out<<"DROP TABLE IF EXISTS all_questions;\n";

    out<<"CREATE TABLE all_questions(";
    out<<"\n\tQuestionID INT,";
    out<<"\n\tQuestionText VARCHAR(255),";
    out<<"\n\tGroupName VARCHAR(255),";
    out<<"\n\tIsClosed BOOLEAN";
    out<<"\n);\n";

	for (auto x : AllQuestions) {
        out<<"INSERT INTO all_questions VALUES (";
		out <<x.first <<",'"<< modifyString(x.second.text) << "','" ;
		out << modifyString(x.second.groupName) << "'," << (x.second.isClosed ? "TRUE" : "FALSE")<<");\n";
	}

    out<<"SELECT * FROM all_questions;";

	out.close();
}
void NarrowDesign::OutputAllQuestionsTable2(string output)
{
    ofstream out;
    out.open(output);
    out<<"DROP TABLE IF EXISTS all_questions2;\n";
    out<<"CREATE TABLE all_questions2(\n";
    out<<"\tQuestionID INT\n";
    out<<");\n\n";

    out<<"ALTER TABLE all_questions2\n";
    for (int i=1;i<maxLevel;i++)
        out<<"ADD COLUMN Level"<<i<<" VARCHAR(255),\n";
    out<<"ADD COLUMN Level"<<maxLevel<<" VARCHAR(255);\n\n";

    for (auto x: AllQuestions2){
        auto y = x.second.level;
        out<<"INSERT INTO all_questions2 (";
        for (int i=0;i<(int)y.size();i++)
            out<<"Level"<<i+1<<',';
        out<<"QuestionID)\n";

        out<<"VALUES (";
        for (int i=0;i<(int)y.size();i++)
            out<<'\''<<modifyString(y[i])<<'\''<<',';
        out<<x.first<<");\n\n";
    }

    out<<"SELECT * FROM all_questions2;";

    out.close();
}
void NarrowDesign::OutputAllOptionsTable(string output)
{
    ofstream out;
    out.open(output);

    out<<"DROP TABLE IF EXISTS all_options;\n";

    out<<"CREATE TABLE all_options(";
    out<<"\n\tQuestionID INT,";
    out<<"\n\tOptionID INT,";
    out<<"\n\tOptionText varchar(255)";
    out<<"\n);\n";

	for (auto x : AllOptions)
        out<<"INSERT INTO all_options VALUES ("<<x.questionID<<","<<x.id<<",'"<<modifyString(x.text)<<"');\n";

    out<<"SELECT * FROM all_options;";

	out.close();
}
void NarrowDesign::OutputAllClosedResponsesTable(string output)
{
    ofstream out;
    out.open(output);

    out<<"DROP TABLE IF EXISTS all_closed_responses;\n";

    out<<"CREATE TABLE all_closed_responses(";
    out<<"\n\tParticipantID INT,";
    out<<"\n\tQuestionID INT,";
    out<<"\n\tOptionID INT";
    out<<"\n);\n";

	for (auto x : closedResponses) {
		out<<"INSERT INTO all_closed_responses VALUES (";
		out<<x.id<<","<<x.questionID<<",'"<<x.optionID<<"');\n";
	}

	out<<"SELECT * FROM all_closed_responses;";

	out.close();
}
void NarrowDesign::OutputAllOpenedResponsesTable(string output)
{
    ofstream out;
    out.open(output);

    out<<"DROP TABLE IF EXISTS all_opened_responses;\n";

    out<<"CREATE TABLE all_opened_responses(";
    out<<"\n\tParticipantID INT,";
    out<<"\n\tQuestionID INT,";
    out<<"\n\tResponseText varchar(255),";
    out<<"\n\tResponseType varchar(255)";
    out<<"\n);\n";

	for (auto x : openedResponses) {
		out<<"INSERT INTO all_opened_responses VALUES (";
		out<<x.id<<","<<x.questionID<<",'"<<modifyString(x.responseText)<<"','"<<x.responseType<<"');\n";
	}

	out<<"SELECT * FROM all_opened_responses;";

	out.close();
}
