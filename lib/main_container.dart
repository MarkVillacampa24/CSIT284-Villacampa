import 'package:flutter/material.dart';

import 'colorful_text.dart';

class MainContainer extends StatelessWidget {
  const MainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.deepPurple,
            Color(0xFF512DA8),
          ],
        ),
      ),
      child: const SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: ColorfulText(),
          ),
        ),
      ),
    );
  }
}
