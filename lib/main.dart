import 'package:flutter/material.dart';
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
    'What\'s your favorite color?',
    'What\'s your favorite animal'
  ];
  void _answerQuestion() {
    setState(() {
      if (_questionNumber >= 1) {
        return;
      }
      _questionNumber += 1;
    });

    print('Answer Choosen');
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
            Question(questions[_questionNumber]),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 3')),
            ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
