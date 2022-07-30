// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
    final VoidCallback onPressed;

  const Answer({Key? key,  required this.onPressed}) : super(key: key);
  
  get selectHandler => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text("Answer 1"),
        onPressed: selectHandler,
      ),
    );
  }
}
