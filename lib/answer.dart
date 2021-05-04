import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  final Function _handler;
  final String _options;

  Answer(this._handler,this._options);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      child: ElevatedButton(
              child: Text(_options),
              onPressed: _handler,
            )
    );
  }
}