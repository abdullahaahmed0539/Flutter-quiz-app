import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int score;

  Result(this.score);

  String get score_card{
    String display = 'Your Score is ${score}/40';
    return display;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        score_card,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        
      )
    );
  }
}