import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  
  final int _score;
  final Function reset;

  Result(this._score, this.reset);

  String get _scoreCard{
    String display = 'Your Score is $_score/40';
    return display;
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column (
        children:[ 
        Text(
        _scoreCard,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center, 
      ),
      FlatButton(onPressed: reset, child: Text('Reset'),textColor: Colors.blue,)]
      )
    );
  }
}