import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> questions;
  final Function press;
  final int question_index;

  Quiz(this.questions,this.press, this.question_index);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
         Question(questions[question_index]['question']),
         ...(questions[question_index]['answer'] as List <Map<String, Object>>).map((answer){return Answer(()=> press(answer['score']), answer['option']);}).toList(),
         
        ],
      )
         
    );
  }
}