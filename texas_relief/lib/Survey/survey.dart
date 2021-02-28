import 'package:flutter/material.dart';
import 'package:texas_relief/LoginPage.dart';
import 'package:texas_relief/Survey/quiz.dart';
import 'package:texas_relief/Survey/result.dart';
import 'package:texas_relief/main.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  final _questions = [
    {
      "QuestionText": "Are you in need of immediate assistance?",
      "answers": [
        {"text": "Medical", "score": 10},
        {"text": "Shelter ", "score": 6},
        {"text": "Food/Water", "score": 20},
        {"text": "N/A", "score": 1}
      ]
    },
    {
      "QuestionText": "What is your favorite animal?",
      "answers": [
        {"text": "First Time Homeowner", "score": 1},
        {"text": "Veteran Homeowner", "score": 5},
        {"text": "Multiple Homeowner", "score": 7},
        {"text": "Renter", "score": 10},
        {"text": "Homeless", "score": 10}
      ]
    },
    {
      "QuestionText": "Are you an owner of a small business?",
      "answers": [
        {"text": "Yes ", "score": 10},
        {"text": "No", "score": 6},
      ]
    },
    {
      "QuestionText":
          "If replied Yes to the previous question, are you in need of a grant/loan?",
      "answers": [
        {"text": "Grant for Repairs", "score": 1},
        {"text": "Economic Distress", "score": 5},
        {"text": "Disaster Relief ", "score": 7},
        {"text": "N/A", "score": 10},
      ]
    },
    {
      "QuestionText":
          "Are you, or your family member in need of financial assistance for medical bills?",
      "answers": [
        {"text": "Yes ", "score": 10},
        {"text": "No", "score": 6},
      ]
    },
  ];
  int questionIndex = 0;
  int _totalScore = 0;

  void reset() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      questionIndex += 1;
    });
    _totalScore += score;
    // print("answer ");
    // print(questionIndex);
    print(_totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF0652C5), Colors.lightGreen[300]])),
          child: questionIndex < _questions.length
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Question ${questionIndex + 1} of ${_questions.length}",
                      style: TextStyle(fontSize: 36, color: Colors.cyan[200]),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Quiz(_answerQuestion, _questions, questionIndex)
                  ],
                )
              : Result(),
        ),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
