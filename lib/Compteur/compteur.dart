import 'package:flutter/material.dart';

class CompteurScreen extends StatefulWidget {
  const CompteurScreen({
    super.key});

  @override
  State<CompteurScreen> createState() => _CompteurScreenState();
}

class _CompteurScreenState extends State<CompteurScreen> {
  int n = 0;

  void increment(){
    setState(() {
      n++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(n: n),
            Mybutton(increment: increment)
          ],
        ),
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  const Mybutton({
    super.key,
    required this.increment
  });

  final VoidCallback increment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: increment,
      child: Text('increment') );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.n,
  });

  final int n;

  @override
  Widget build(BuildContext context) {
    return Text("nombre incrementer : ${n}");
  }
}