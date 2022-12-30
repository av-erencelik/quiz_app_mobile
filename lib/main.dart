import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionNumber = 0;
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['red', 'blue', 'green', 'yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['elephant', 'lion', 'dog', 'cat']
    },
    {
      'questionText': 'What\'s your favorite subject?',
      'answers': ['literature', 'math', 'history', 'physics']
    },
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionNumber >= 2) {
        return;
      }
      _questionNumber += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionNumber]['questionText']),
            ...(questions[_questionNumber]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            })
          ],
        ),
      ),
    );
  }
}
