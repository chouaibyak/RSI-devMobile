import '../models/QuestionModel.dart';

final List<Questionmodel> questions = [
  Questionmodel(
    question: "What is Flutter?",
    answers: [
      "A programming language",
      "A framework for building apps",
      "A database",
      "An operating system"
    ],
    correctIndex: 1,
  ),

  Questionmodel(
    question: "What is Dart?",
    answers: [
      "A database",
      "A programming language",
      "A framework",
      "A tool for design"
    ],
    correctIndex: 1,
  ),

  Questionmodel(
    question: "What is a Widget?",
    answers: [
      "A file",
      "A UI component",
      "A database",
      "A server"
    ],
    correctIndex: 1,
  ),

   Questionmodel(
    question: "What is MaterialApp?",
    answers: ["A button", "A main app widget", "A database", "A layout"],
    correctIndex: 1,
  ),
  Questionmodel(
    question: "What is Scaffold?",
    answers: ["A layout structure for a screen", "A programming language", "A function", "A server"],
    correctIndex: 0,
  ),
];