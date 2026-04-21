import 'package:flutter/material.dart';
import 'package:learningdart/TP3_QuizAPP/screens/startScreen.dart';
import './screens/questionScreen.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  String activeScreen = "start";

  void switchScreen() {
    setState(() {
      if (activeScreen == "start") {
        activeScreen = "quiz";
      } else {
        activeScreen = "start";
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget screen;

    if (activeScreen == "start") {
      screen = StartScreen(onStart: switchScreen);
    } else {
      screen = Question(onStart: switchScreen);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 183, 248),
        body: screen,
      ),
    );
  }
}