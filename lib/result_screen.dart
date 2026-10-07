import 'package:flutter/material.dart';

import 'main_container.dart';
import 'quiz_data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.selectedAnswers});

  final List<String> selectedAnswers;

  int get correctAnswers {
    var score = 0;
    for (var i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == questions[i].correctAnswer) {
        score++;
      }
    }
    return score;
  }

  @override
  Widget build(BuildContext context) {
    final score = correctAnswers;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Results'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple, Color(0xFFF5F2FF)],
            stops: [0.0, 0.32],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.emoji_events,
                          size: 50,
                          color: Colors.deepPurple,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'You scored $score out of ${questions.length}!',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          score == questions.length
                              ? 'Perfect score! Great job!'
                              : 'Review your answers and try again.',
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: ListView.builder(
                    itemCount: questions.length,
                    itemBuilder: (context, index) {
                      final question = questions[index];
                      final isCorrect =
                          selectedAnswers[index] == question.correctAnswer;

                      return Card(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    isCorrect ? Icons.check_circle : Icons.cancel,
                                    color: isCorrect ? Colors.green : Colors.red,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Text(
                                      '${index + 1}. ${question.question}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text('Your answer: ${selectedAnswers[index]}'),
                              if (!isCorrect)
                                Text(
                                  'Correct answer: ${question.correctAnswer}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (_) => const Scaffold(
                            body: MainContainer(),
                          ),
                        ),
                        (route) => false,
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Restart Quiz'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
