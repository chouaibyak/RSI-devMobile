import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

void main() {
  runApp(
    const ProviderScope(
      child: CompteurRiverpod(),
    )
  );
}


class CompteurRiverpod extends StatelessWidget {
  const CompteurRiverpod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(),
              MyButton()
            ],
          ),
        ),
      ),
    );
  }
}

class MyButton extends ConsumerWidget {
  const MyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(onPressed: (){
      ref.read(counterProvider.notifier).state++;
    }, 
    child: Text("incrementer"));
  }
}

class MyText extends ConsumerWidget {
  const MyText({
    super.key,
  });


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final n = ref.watch(counterProvider);
    return Text("nombre incrementer: $n");
  }
}