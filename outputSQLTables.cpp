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
#define _AddColumn "ADD COLUMN "
#define _DropTable "DROP TABLE IF EXISTS "
#define _CreateTable "CREATE TABLE "
#define _InsertInto "INSERT INTO "
#define _SelectAllFrom "SELECT * FROM "
#define _AlterTable "ALTER TABLE "

using namespace rapidjson;
using namespace std;

string NarrowDesign::modifyString(string x)
{
    string y = "";
    for (int i = 0; i < (int)x.size(); i++)
        if (x[i] == '\'')
            y += "''";
        else y += x[i];
    return y;
}
void NarrowDesign::OutputAllQuestionsTable(string output)
{
    ofstream out;
    out.open(output);

    out << _DropTable << "all_questions;\n";

    out << _CreateTable << "all_questions(";
    out << "\n\tQuestionID INT,";
    out << "\n\tQuestionText VARCHAR(255),";
    out << "\n\tGroupName VARCHAR(255),";
    out << "\n\tIsClosed BOOLEAN";
    out << "\n);\n";

    for (auto x : AllQuestions) {
        out << _InsertInto << "all_questions VALUES (";
        out << x.first << ",'" << modifyString(x.second.text) << "','";
        out << modifyString(x.second.groupName) << "'," << (x.second.isClosed ? "TRUE" : "FALSE") << ");\n";
    }

    out << _SelectAllFrom << "all_questions;";

    out.close();
}
void NarrowDesign::OutputAllQuestionsTable2(string output)
{
    ofstream out;
    out.open(output);
    out << _DropTable << "all_questions2;\n";
    out << _CreateTable << "all_questions2(\n";
    out << "\tQuestionID INT\n";
    out << ");\n\n";

    out << _AlterTable << "all_questions2\n";
    for (int i = 1; i < MaxLevel_; i++)
        out << _AddColumn << "Level" << i << " VARCHAR(255),\n";
    out << _AddColumn << "Level" << MaxLevel_ << " VARCHAR(255);\n\n";

    for (auto x : AllQuestions2) {
        auto y = x.second.level;
        out << _InsertInto << "all_questions2 (";
        for (int i = 0; i < (int)y.size(); i++)
            out << "Level" << i + 1 << ',';
        out << "QuestionID)\n";

        out << "VALUES (";
        for (int i = 0; i < (int)y.size(); i++)
            out << '\'' << modifyString(y[i]) << '\'' << ',';
        out << x.first << ");\n\n";
    }

    out << _SelectAllFrom << "all_questions2;";

    out.close();
}
void NarrowDesign::OutputAllOptionsTable(string output)
{
    ofstream out;
    out.open(output);

    out << _DropTable << "all_options;\n";

    out << _CreateTable << "all_options(";
    out << "\n\tQuestionID INT,";
    out << "\n\tOptionID INT,";
    out << "\n\tOptionText varchar(255)";
    out << "\n);\n";

    for (auto x : AllOptions)
        out << _InsertInto << "all_options VALUES (" << x.questionID << "," << x.id << ",'" << modifyString(x.text) << "');\n";

    out << _SelectAllFrom << "all_options;";

    out.close();
}
void NarrowDesign::OutputAllClosedResponsesTable(string output)
{
    ofstream out;
    out.open(output);

    out << _DropTable << "all_closed_responses;\n";

    out << _CreateTable << "all_closed_responses(";
    out << "\n\tParticipantID INT,";
    out << "\n\tQuestionID INT,";
    out << "\n\tOptionID INT";
    out << "\n);\n";

    for (auto x : closedResponses) {
        out << _InsertInto << "all_closed_responses VALUES (";
        out << x.id << "," << x.questionID << ",'" << x.optionID << "');\n";
    }

    out << _SelectAllFrom << "all_closed_responses;";

    out.close();
}
void NarrowDesign::OutputAllOpenedResponsesTable(string output)
{
    ofstream out;
    out.open(output);

    out << _DropTable << "all_opened_responses;\n";

    out << _CreateTable << "all_opened_responses(";
    out << "\n\tParticipantID INT,";
    out << "\n\tQuestionID INT,";
    out << "\n\tResponseText varchar(255),";
    out << "\n\tResponseType varchar(255)";
    out << "\n);\n";

    for (auto x : openedResponses) {
        out << _InsertInto << "all_opened_responses VALUES (";
        out << x.id << "," << x.questionID << ",'" << modifyString(x.responseText) << "','" << x.responseType << "');\n";
    }

    out << _SelectAllFrom << "all_opened_responses;";

    out.close();
}
