import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CompteurProvider extends StatelessWidget {
  const CompteurProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText(),
            MyButton()
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: context.read<ProviderCompteur>().increment, 
    child: Text("incrementer"));
  }
}

class MyText extends StatelessWidget {
  const MyText({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Text("nombre incrementer: ${context.watch<ProviderCompteur>().n}");
  }
}

class ProviderCompteur extends ChangeNotifier{
  int n = 0;

  void increment() {
    n++;
    notifyListeners();
  }

}