import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {

  final List<int> userAnswers;
  final VoidCallback onStart;

  const SummaryScreen({
    super.key,
    required this.userAnswers,
    required this.onStart
    });

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {

  Color getColor(int questionIndex, int answerIndex, int correctIndex){
    if(questionIndex >= widget.userAnswers.length){
        return Colors.deepPurple;
    }

    int userAnswer = widget.userAnswers[questionIndex];
    
    if(answerIndex == correctIndex){
      return Colors.green;
    }

    if (answerIndex == userAnswer && userAnswer != correctIndex) {
      return Colors.red;
    }

    return Colors.deepPurple;
  } 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("1", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),)
                    ),
                ),
                Text(" What is Fluteer?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
        
            Column(
              children: [
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(0, 0, 1),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  child: Text("A programming language", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color:getColor(0, 1, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A framework for building apps", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(0, 2, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A database", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(0, 3, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("An operating system", style: TextStyle(color: Colors.white,),)
                ),
              ],
            ),
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("2", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),)
                    ),
                ),
                Text(" What is Dart?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
        
            Column(
              children: [
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(1, 0, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A database", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(1, 1, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A programming language", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(1, 2, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A framework", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(1, 3, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A tool for design", style: TextStyle(color: Colors.white,),)
                ),
              ],
            ),
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("3", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),)
                    ),
                ),
                Text(" What is a Widget in Flutter?", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
              ],
            ),
        
            Column(
              children: [
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(2, 0, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A file", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(2, 1, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A UI component", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(2, 2, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A database", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(2, 3, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A server", style: TextStyle(color: Colors.white,),)
                ),
              ],
            ),
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("4", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),)
                    ),
                ),
                Text(" What is MaterialApp?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
        
            Column(
              children: [
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(3, 0, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A button", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(3, 1, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A main app widget", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(3, 2, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A database", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(3, 3, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A layout", style: TextStyle(color: Colors.white,),)
                ),
              ],
            ),
        
        
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Text("5", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold,),)
                    ),
                ),
                Text(" What is Scaffold?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              ],
            ),
        
            Column(
              children: [
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(4, 0, 0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A layout structure for a screen", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(4, 1, 0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A programming language", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(4, 2, 0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A function", style: TextStyle(color: Colors.white,),)
                ),
        
                SizedBox(height: 5,),
        
                Container(
                  width: 250,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: getColor(4, 3, 0),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("A server", style: TextStyle(color: Colors.white,),)
                ),
              ],
            ),

            SizedBox(height: 10,),

            ElevatedButton(onPressed: widget.onStart ,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple
              ),
             child: Row(
              mainAxisSize: MainAxisSize.min,
               children: [
                  Icon(Icons.restart_alt, fontWeight: FontWeight.bold, color: Colors.white,),
                  Text("Re-Start Quiz", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
               ],
             )) 
          ],
        ),
      )
    );
  }
}