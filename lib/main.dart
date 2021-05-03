import 'package:flutter/material.dart';

import './question.dart';

void main () => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State <MyApp> {  
  int _i  = 0;
  @override
  Widget build(BuildContext context) { 
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
    ];
    var button = [
      '>>',
      '<<',
    ];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[_i]),
            ElevatedButton(
              child: Text(button[_i]),
              onPressed: () { 
                setState(() {
                  if(_i==0){
                    _i++;
                  }else{
                    _i = 0;
                  }
                  
                });
              },
            ),
          ]
        ),
      ),
    );
  }
}