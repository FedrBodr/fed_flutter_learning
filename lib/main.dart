import 'package:flutter/material.dart';
import 'package:flutter_learning/quiz.dart';
import 'package:flutter_learning/result.dart';

void main() => runApp(FedFlutterLearningApp());

class FedFlutterLearningApp extends StatefulWidget {
  @override
  _FedFlutterLearningAppState createState() => _FedFlutterLearningAppState();
}

class _FedFlutterLearningAppState extends State<FedFlutterLearningApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'Question': 'You fist school name?',
      'answers': [
        {"text": '331', "score": 1},
        {"text": '1877', "score": 2}
      ]
    },
    {
      'Question': 'You fist love name?',
      'answers': [
        {"text": "Tata", "score": 1},
        {"text": "Natasha", "score": 5},
        {"text": "Masha", "score": 8},
        {"text": "Ira", "score": 15}
      ]
    },
    {
      'Question': "What's your favorite color??",
      'answers': [
        {"text": 'Green', "score": 2},
        {"text": 'Blue', "score": 5},
        {"text": 'Orange', "score": 10},
        {"text": 'Black', "score": 13}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
    print("Question answered, total score is $_totalScore");
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    print(
        "Quiz resets, total score is $_totalScore and _questionIndex is $_questionIndex");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('FedrBodr Demo')),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
