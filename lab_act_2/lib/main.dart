import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.blue
              ]
            )
          ),
          child: Center(
            child: Text(
              'Hello World'),
              ),
        ),
          ),
        ),
      );
}