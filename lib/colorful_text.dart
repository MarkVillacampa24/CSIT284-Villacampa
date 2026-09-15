import 'package:flutter/material.dart';

import 'quiz_screen.dart';

class ColorfulText extends StatelessWidget {
  const ColorfulText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(
            'assets/logo/logo.png',
            width: 150,
            height: 150,
          ),
        ),
        const SizedBox(height: 28),
        const Text(
          'Flutter Quest',
          style: TextStyle(
            color: Colors.white,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Learn Flutter in a fun way!',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const QuizScreen()),
            );
          },
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start Quiz'),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            backgroundColor: Colors.white,
            foregroundColor: Colors.deepPurple,
            textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ),
      ],
    );
  }
}
