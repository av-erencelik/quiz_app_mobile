import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionNumber = 0;
  var _totalScore = 0;
  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 5},
        {'text': 'green', 'score': 4},
        {'text': 'yellow', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'elephant', 'score': 5},
        {'text': 'lion', 'score': 4},
        {'text': 'dog', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite subject?',
      'answers': [
        {'text': 'math', 'score': 10},
        {'text': 'history', 'score': 5},
        {'text': 'literature', 'score': 4},
        {'text': 'physics', 'score': 1}
      ]
    },
  ];
  void _resetQuiz() {
    setState(() {
      _questionNumber = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(score) {
    _totalScore += score;
    setState(() {
      _questionNumber += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('My First App'),
          ),
          body: _questionNumber < _questions.length
              ? Quiz(_questions, _answerQuestion, _questionNumber)
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
