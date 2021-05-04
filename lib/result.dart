import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int _score;

  Result(this._score);

  String get _scoreCard{
    String display = 'Your Score is $_score/40';
    return display;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _scoreCard,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
        
      )
    );
  }
}