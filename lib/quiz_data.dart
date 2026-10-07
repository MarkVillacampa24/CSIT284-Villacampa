class QuizQuestion {
  const QuizQuestion({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  final String question;
  final List<String> answers;
  final String correctAnswer;
}

const questions = [
  QuizQuestion(
    question: 'What are the main building blocks of Flutter UIs?',
    answers: [
      'Widgets',
      'Screenshots',
      'HTML pages',
      'Database tables',
    ],
    correctAnswer: 'Widgets',
  ),
  QuizQuestion(
    question: 'How are Flutter UIs built?',
    answers: [
      'By combining widgets in a visual editor',
      'By using XCode for iOS and Android Studio for Android',
      'By combining widgets in code',
      'By defining widgets in config files',
    ],
    correctAnswer: 'By combining widgets in code',
  ),
  QuizQuestion(
    question: "What's the purpose of a StatefulWidget?",
    answers: [
      'To manage data that can change while the app runs',
      'To replace all StatelessWidgets',
      'To store files permanently',
      'To connect Flutter to the internet automatically',
    ],
    correctAnswer: 'To manage data that can change while the app runs',
  ),
  QuizQuestion(
    question: 'Which widget should you try to use more often?',
    answers: [
      'StatefulWidget',
      'StatelessWidget',
      'Both must always be used together',
      'Neither widget',
    ],
    correctAnswer: 'StatelessWidget',
  ),
  QuizQuestion(
    question: 'What happens if you change data in a StatelessWidget?',
    answers: [
      'The widget automatically saves the change',
      'The widget cannot rebuild from changed internal state',
      'Flutter restarts the whole app',
      'The app changes to dark mode',
    ],
    correctAnswer: 'The widget cannot rebuild from changed internal state',
  ),
  QuizQuestion(
    question: 'How should you update data inside of StatefulWidgets?',
    answers: [
      'By editing the widget constructor',
      'By closing and reopening the app',
      'By calling setState()',
      'By changing the pubspec.yaml file',
    ],
    correctAnswer: 'By calling setState()',
  ),
];
