import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({super.key});
  @override
  Widget build(context) {

  return Text(
        'Hello World',
        style: TextStyle(
          fontSize: 150,
          color: Colors.black,
        )
        );
  }      
}