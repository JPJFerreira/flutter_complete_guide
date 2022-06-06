import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Fisrt App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[_questionIndex]),
            ElevatedButton(
              // Like Raised Button
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              // Like Raised Button
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen!'),
            ),
            ElevatedButton(
              // Like Raised Button
              child: Text('Answer 3'),
              onPressed: () {
                print('Answer 3 chosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
