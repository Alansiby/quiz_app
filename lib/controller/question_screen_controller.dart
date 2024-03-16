import 'package:quiz_app/model/question_screen_model/question_screen_model.dart';

class QuestionScreenController {
  static List<QuestionsModel> flutterQuestions = [
    QuestionsModel(
      question: "Which language is used in flutter ?",
      optionsList: ["Python", "Dart", "HTML", "C"],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: "Which widget in Flutter is best for making text scrollable?",
      optionsList: ["ListView", "Column", 'SingleChildScrollView', 'Text'],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: 'What is the command to update all dependencies in Flutter?',
      optionsList: [
        'flutter update',
        'flutter get',
        'flutter packages upgrade',
        'flutter upgrade'
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: 'Which of the following is used to manage state in Flutter?',
      optionsList: [
        'StatefulBuilder',
        'StatelessWidget',
        'Provider',
        'FutureBuilder'
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: 'What is the purpose of the SafeArea widget in Flutter?',
      optionsList: [
        'To add padding',
        'To create responsive layouts',
        'To avoid intrusions by the operating system',
        'To align widgets'
      ],
      correctAnswerIndex: 2,
    ),
    QuestionsModel(
      question: 'Which widget is used for navigation and routing in Flutter?',
      optionsList: ['Navigator', 'Route', 'Map', 'Nav'],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'What is the use of the "pubspec.yaml" file?',
      optionsList: [
        'Dependency management',
        'App configuration',
        'Code formatting',
        'Version control'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question:
          'Which of these is not a valid lifecycle state for a Flutter app?',
      optionsList: ['resumed', 'inactive', 'paused', 'stopped'],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: 'What is the purpose of the "BuildContext" in Flutter?',
      optionsList: [
        'To manage the widget tree',
        'To store assets',
        'To handle user input',
        'To execute background tasks'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question:
          'Which widget would you use to create a scrollable list in Flutter?',
      optionsList: ['ListView', 'Column', 'ScrollView', 'Scrollable'],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'What is the command to create a new Flutter project?',
      optionsList: [
        'flutter create',
        'flutter new',
        'flutter start',
        'flutter init'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'Which of these is a state management approach in Flutter?',
      optionsList: ['Bloc', 'MVC', 'MVVM', 'All of the above'],
      correctAnswerIndex: 3,
    ),
    QuestionsModel(
      question: 'What is the purpose of the "Scaffold" widget in Flutter?',
      optionsList: [
        'To provide a base structure for the app',
        'To create animations',
        'To manage app settings',
        'To handle form submission'
      ],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'Which function is used to run a Flutter app?',
      optionsList: ['main()', 'runApp()', 'start()', 'execute()'],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: 'What is the default method of layout in Flutter?',
      optionsList: ['Absolute positioning', 'Flexbox', 'Grid', 'Stack'],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question: 'Which widget is used to add padding around another widget?',
      optionsList: ['Padding', 'Container', 'Box', 'EdgeInset'],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'What is the purpose of the "StreamBuilder" widget?',
      optionsList: [
        'To build responsive UI',
        'To listen to stream changes',
        'To send data to a server',
        'To build a form'
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          'Which widget is used to align its child within itself and optionally size itself based on the child\'s size?',
      optionsList: ['Align', 'Center', 'Container', 'Padding'],
      correctAnswerIndex: 0,
    ),
    QuestionsModel(
      question: 'What is the purpose of the "Hero" widget in Flutter?',
      optionsList: [
        'To add visual effects',
        'To create shared element transitions',
        'To display images',
        'To play videos'
      ],
      correctAnswerIndex: 1,
    ),
    QuestionsModel(
      question:
          'Which of the following is true about the "hot reload" feature in Flutter?',
      optionsList: [
        'It updates the UI instantly',
        'It requires restarting the app',
        'It is only available in release mode',
        'It cannot update stateful widgets'
      ],
      correctAnswerIndex: 0,
    ),
  ];
}
