import 'package:flutter/material.dart';
import 'package:learningdart/Compteur_provider/compteur_screen.dart';
import 'package:learningdart/shop_app/pages/category_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CompteurScreen(),
    );
  }
}
