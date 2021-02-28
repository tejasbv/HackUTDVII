import 'package:flutter/material.dart';
import 'package:texas_relief/LoginPage.dart';
import 'package:texas_relief/Survey/quiz.dart';
import 'package:texas_relief/main.dart';

class Survey extends StatefulWidget {
  @override
  _SurveyState createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {
  final _questions = [
    {
      "QuestionText": "what is your favorite color?",
      "answers": [
        {"text": "red", "score": 10},
        {"text": "green", "score": 6},
        {"text": "black", "score": 20},
        {"text": "white", "score": 1}
      ]
    },
    {
      "QuestionText": "What is your favorite animal?",
      "answers": [
        {"text": "dog", "score": 1},
        {"text": "cat", "score": 5},
        {"text": "alien", "score": 7},
        {"text": "human", "score": 10}
      ]
    },
    {
      "QuestionText": "what is your favorite fruit?",
      "answers": [
        {"text": "tomato", "score": 10},
        {"text": "apple", "score": 6},
        {"text": "blue berry", "score": 5},
        {"text": "banana", "score": 1}
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
            child: Column(
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
            )),
        backgroundColor: Colors.teal,
      ),
    );
  }
}
