import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learningdart/TP3_QuizAPP/screens/summaryScreen.dart';
import '../data/questionData.dart';

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

  void answerQuestion(int answerIndex){
    setState(() {
      userAnswers.add(answerIndex);
      if (selectedIndex < questions.length - 1) {
        selectedIndex++;
      }else{
        selectedIndex = questions.length;
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    //fin de quiz
    if(selectedIndex == questions.length ){
      return SummaryScreen(
        userAnswers: userAnswers,
        onStart: widget.onStart);
    }

    final currentQuestion = questions[selectedIndex];

    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            currentQuestion.question,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),

          const SizedBox(height: 15),

          ...List.generate(currentQuestion.answers.length, (index) {

            return Column(
              children: [

                ElevatedButton(
                  onPressed: () => answerQuestion(index),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    fixedSize: const Size(320, 35),
                  ),
                  child: Text(
                    currentQuestion.answers[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

                const SizedBox(height: 15),

              ],
            );
          }),

        ],
      ),
    );
  }
}
