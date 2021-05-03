import 'package:flutter/material.dart';

void main () => runApp(MyApp());


class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State <MyApp> {  
  int i  = 0;
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
            Text(questions[i]),
            ElevatedButton(
              child: Text('>>'),
              onPressed: () { 
                setState(() {
                  i++;
                });
              },
            ),
          ]
        ),
      ),
    );
  }
}