import 'package:flutter/material.dart';
import 'package:learningdart/shop_app/core/app_config.dart';
import '../models/product.dart';

class ProductDetailePage extends StatefulWidget {
  final Product product;

  const ProductDetailePage({super.key, required this.product});

  @override
  State<ProductDetailePage> createState() => _ProductDetailePageState();
}

class _ProductDetailePageState extends State<ProductDetailePage> {
  @override
  Widget build(BuildContext context) {
    final p = widget.product;

    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc pur
      appBar: AppBar(
        title: Text("product details for ${p.name}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image avec un fond gris très clair
            Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.grey[50], 
              ),
              child: Image.network(
                "{$AppConfig.ima}",
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nom du produit
                  Text(
                    p.name.toUpperCase(), // Style minimaliste en majuscules
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Prix
                  Text(
                    "${p.price} €",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  
                  const SizedBox(height: 30),
                  const SizedBox(height: 20),
                  
                  // Description
                  const Text(
                    "DETAILS",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    p.description,
                    style: TextStyle(
                      fontSize: 15,
                      height: 1.6, // Espacement entre les lignes
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      
      // Bouton en bas (Noir et Blanc)
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: OutlinedButton(
            onPressed: () {
              setState(() {
              });
            },
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.black, width: 1.5), // Bordure noire
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero), // Angles droits pour le style minimaliste
            ),
            child: Text(
              "ADD TO FAVORITES",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}