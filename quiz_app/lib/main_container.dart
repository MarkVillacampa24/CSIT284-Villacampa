import 'package:flutter/material.dart';
import 'colorful_text.dart'; // Import your colorful text widget

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.deepPurple, // You can change this background color
      ),
      child: const Center(
        child: ColorfulText(), // Calling your colorful text widget here
      ),
    );
  }
}