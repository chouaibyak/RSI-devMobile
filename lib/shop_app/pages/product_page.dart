import 'package:flutter/material.dart';
import 'package:learningdart/shop_app/pages/product_detaile_page.dart';
import '../models/category.dart';

class ProductsPage extends StatefulWidget {
  final Category category;

  const ProductsPage({super.key, required this.category, required product});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Produits de ${widget.category.name}")),
      body: widget.category.products.isEmpty 
        ? const Center(child: Text("Aucun produit disponible"))
        : ListView.builder(
            itemCount: widget.category.products.length,
            itemBuilder: (context, index) {
              final product = widget.category.products[index];
              return ListTile(
                title: Text(product.name),
                subtitle: Text("${product.price} €"),
                onTap: () {
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (_) => ProductDetailePage(product: product,)
                  )
                  );
                },
              );
            },
          ),
    );
  }
}