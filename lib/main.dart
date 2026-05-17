import 'package:flutter/material.dart';
import 'package:learningdart/Compteur/compteur.dart';
import 'package:learningdart/Compteur/compteur_provider.dart';
import 'package:learningdart/shop_app/pages/category_page.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( ChangeNotifierProvider(
    create: (_) => ProviderCompteur(),
    child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CompteurProvider(),
    );
  }
}
