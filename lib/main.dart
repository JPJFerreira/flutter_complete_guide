import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            Text('The question!'),
            ElevatedButton(
              // Like Raised Button
              child: Text('Answer 1'),
              onPressed: () {
                print('Answer 1 chosen!');
              },
            ),
            ElevatedButton(
              // Like Raised Button
              child: Text('Answer 2'),
              onPressed: () {
                print('Answer 2 chosen!');
              },
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
