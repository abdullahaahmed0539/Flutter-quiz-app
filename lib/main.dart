import 'package:flutter/material.dart';
import 'package:flutter_application_1/question.dart';

import './quiz.dart';
import './result.dart';

void main () => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State <MyApp> {  
  int i  = 0;
  int total = 0;
  
  final questions = [
      {'question':'When was Pakistan founded?',
      'answer': [
        {'option':'1945', 'score': 0},
        {'option':'1946', 'score': 0},
        {'option':'1947', 'score': 10},
        {'option':'1948', 'score': 0},
      ]
      },
      {'question':'Who discovered the theory of relativity?',
      'answer': [
        {'option':'Newton', 'score': 0},
        {'option':'Einstein', 'score': 10},
        {'option':'Hawkings', 'score': 0},
        {'option':'Musk', 'score': 0},
      ]
      },
      {'question':'Where is the great pyramids located?',
      'answer': [
        {'option':'Sudan', 'score': 0},
        {'option':'Ethopia', 'score': 0},
        {'option':'Egypt', 'score': 10},
        {'option':'Saudi Arabia', 'score': 0},
        {'option':'Palestine', 'score': 0},]
      },
      {'question':'In decimal, (1110) base 2 is equal to?',
      'answer': [
        {'option':'6', 'score': 0},
        {'option':'15', 'score': 0},
        {'option':'18', 'score': 0},
        {'option':'14', 'score': 10},
      ]
      },
    ];
 
  @override
  void Press(int score){
    total += score;
    setState(() {
      i++;
    });
    
  }

  Widget build(BuildContext context) { 
    
  
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz',),
          
        ),
        body: i < questions.length? Column(
          children: [
              Quiz(questions, Press, i)
          ]
        ): Result(total),
      ),
    );
  }
}