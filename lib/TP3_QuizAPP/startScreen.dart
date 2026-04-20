import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  final VoidCallback onStart;
  const StartScreen({
    super.key,
    required this.onStart
  });

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //vertical
            crossAxisAlignment: CrossAxisAlignment.center,//centralisation horizontale
            children: [
              Icon(Icons.question_mark, size: 250,),
              Text("Welcome To Exam App", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
              ElevatedButton(onPressed: widget.onStart, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  // padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15)
                ),
                child: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min, //centre vertical
                    children: [
                      Icon(Icons.start , fontWeight: FontWeight.bold, color: Colors.white,),
                      Text(" Start Quiz" , style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
                )
              ),
            ],
          ),
        );
  }
}