import 'package:flutter/material.dart';
import 'package:learningdart/TP2_QuizAPP/summaryScreen.dart';

class Question extends StatefulWidget {

  final VoidCallback onStart;

  const Question({
    super.key,
    required this.onStart,
    });

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  int selectedIndex = 0;

  List<int> userAnswers = [];

  void trueQuestion(int answerIndex){
    setState(() {
      userAnswers.add(answerIndex);
      if( selectedIndex < questions.length - 1){
        selectedIndex++;
      }    
    });
  }

  void falseQuestion(int answerIndex){
    setState(() {
      userAnswers.add(answerIndex);
      if( selectedIndex < questions.length -1 ){
        selectedIndex++;
      }      
    });
  } 


  List<Widget> get questions => [
    

    Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("what is Flutter?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(0), 
            child: Text("A programming languge", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => trueQuestion(1), 
            child: Text("A framework for building apps", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(2), 
            child: Text("A database", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(3), 
            child: Text("An operating system", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          
        ],
      ),
    ),



    Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("What is Dart?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(0), 
            child: Text("A database", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () =>  trueQuestion(1), 
            child: Text("A programming languge", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(2), 
            child: Text("A framework", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(3), 
            child: Text("A tool for design", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          
        ],
      ),
    ),




    Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("What is a Widget in Flutter?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(0), 
            child: Text("A file", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => trueQuestion(1), 
            child: Text("A UI component", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(2), 
            child: Text("A database", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(3), 
            child: Text("A server", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          
        ],
      ),
    ),



    Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("What is MaterialApp?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(0), 
            child: Text("A button", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => trueQuestion(1), 
            child: Text("The main app widget", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(2), 
            child: Text("A database", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(3), 
            child: Text("A programming languge", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          
        ],
      ),
    ),



    Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("What is Scaffold?", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => trueQuestion(0), 
            child: Text("A layout structure for a screen", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(1), 
            child: Text("A server", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(2), 
            child: Text("A programming languge", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          SizedBox(height: 15,),

          ElevatedButton(onPressed: () => falseQuestion(3), 
            child: Text("A function", style: TextStyle(color: Colors.white)),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              fixedSize: Size(320, 35)
            ),
          ),

          
        ],
      ),
    ),


    SummaryScreen(
      userAnswers: userAnswers,
      onStart: widget.onStart,
      ),

  ];


  @override
  Widget build(BuildContext context) {
    return questions[selectedIndex];
  }
}