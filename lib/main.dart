import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionNumber = 0;
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal'
  ];
  void answerQuestion() {
    setState(() {
      questionNumber += 1;
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
            Text(questions[questionNumber]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 2')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
