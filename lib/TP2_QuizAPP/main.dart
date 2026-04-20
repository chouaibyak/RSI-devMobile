import 'package:flutter/material.dart';
import 'package:learningdart/TP2_QuizAPP/question.dart';
import 'package:learningdart/TP2_QuizAPP/startScreen.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  int selectedIndex = 0;

  List<Widget> get pages => [
    StartScreen(onStart: change),
    Question(onStart: change)
  ];

  void change(){
    setState(() {
      if(selectedIndex == 0 ){
        selectedIndex = 1;
      }else{
        selectedIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 238, 183, 248),
        body: pages[selectedIndex]
      )
    );
  }
}