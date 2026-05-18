import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
     ProviderScope(
      child: RiverpdList(),
    )
  );
}

class RiverpdList extends ConsumerWidget {
    RiverpdList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> messages = ref.watch(addMessageProvider);
    return MaterialApp(
        home: Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for(String tmp in messages) Text(tmp),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){ref.read(addMessageProvider.notifier).addmessage();}, child: Text("add"))
                ],
              ),
            ),
        ),
    );
  }
}


class AddToListeNotifier extends StateNotifier<List<String>>{
    AddToListeNotifier() : super(["bonsoir"]);
    void addmessage (){
        //state.add("Bonjour"); ne fonctionne pas car le hash code ne change pas
        //pour cela on utilise
        state = [...state, "bonjour"]; //spread operator
        //il faut utiliser affectation pour que changer la reference
        //donc pour une changement de UI il faut faire une affectation state =
    }
}

final addMessageProvider = StateNotifierProvider<AddToListeNotifier, List<String>>((ref) => AddToListeNotifier()) ;
