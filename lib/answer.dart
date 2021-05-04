import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  String options;

  Answer(this.handler,this.options);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: ElevatedButton(
              child: Text(options),
              onPressed: handler,
            )
    );
  }
}