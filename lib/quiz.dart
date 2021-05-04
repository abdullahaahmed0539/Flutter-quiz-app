import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> _questions;
  final Function _press;
  final int _questionIndex;

  Quiz(this._questions,this._press, this._questionIndex);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         Question(_questions[_questionIndex]['question']),
         ...(_questions[_questionIndex]['answer'] as List <Map<String, Object>>).map((answer){return Answer(()=> _press(answer['score']), answer['option']);}).toList(),
         
        ],
      )
         
    );
  }
}