import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\' is your favorite color ?',
      'answers': [
        {'text': 'Black', 'score': 6},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 7},
        {'text': 'White', 'score': 10}
      ]
    },
    {
      'questionText': 'What\' is your favorite animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 12},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 9},
        {'text': 'Lion', 'score': 6}
      ]
    },
    {
      'questionText': 'What\' is your favorite instructor ?',
      'answers': [
        {'text': 'Kaka', 'score': 8},
        {'text': 'Murenzi', 'score': 9},
        {'text': 'Emma', 'score': 13},
        {'text': 'NEW One', 'score': 9}
      ]
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions !');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('STUDY APP')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
