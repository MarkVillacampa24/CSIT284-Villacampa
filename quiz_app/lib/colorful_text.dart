import 'dart:math';
import 'package:flutter/material.dart';

class ColorfulText extends StatefulWidget {
  const ColorfulText({super.key});
  
  @override
  State<ColorfulText> createState() {
    return _ColorfulTextState();
  }
}

class _ColorfulTextState extends State<ColorfulText> {
  final randomizer = Random();
  
  // Changed to a List so we can easily pick items by index
  final List<Color> colors = [Colors.brown,Colors.yellow,Colors.blue,Colors.pink,];
  
  int select = 0;

  void startQuiz() {
    setState(() {
      select = randomizer.nextInt(colors.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/logo/logo.png',
          color: colors[select],
          colorBlendMode: BlendMode.modulate,
        ),
        const SizedBox(height: 20),
        Text(
          "Learn Flutter in a fun way!",
          style: TextStyle(
            color: colors[select],
            fontSize: 28,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: startQuiz,
          child: Text(
            'Start Quiz',
            style: TextStyle(
              color: colors[select],
              fontSize: 28,
            ),
          ),
        ),
      ],
    );
  }
}