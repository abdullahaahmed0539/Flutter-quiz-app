import 'package:flutter/material.dart';

void main () => runApp(MyApp());


class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) { 
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text('The question'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer 1'),
            ),
            ElevatedButton(
              child: Text('Answer 2'), 
              onPressed: () => print('Answer 2'),
            ),
          ]
        ),
      ),
    );
  }
}