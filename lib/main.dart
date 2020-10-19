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
  final _questions = const [
    {
      'Question': 'You fist school name?',
      'answers': ['331', '1877']
    },
    {
      'Question': 'You fist love name?',
      'answers': ["Tata", "Natasha", "Masha", "Ira"]
    },
    {
      'Question': "What's your favorite color??",
      'answers': ['Green', 'Blue', 'Orange', 'Black']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
    print("Question answered");
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
            : Result(),
      ),
    );
  }
}
