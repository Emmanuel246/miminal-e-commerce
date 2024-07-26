import 'package:flutter/material.dart';
import 'package:minimal_shop/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // product image
        children: [
          Icon(Icons.favorite),
        //product name
        Text(product.name),
        // product description
        Text(product.description),
        // product prize + add to cart button
        Text(product.price.toStringAsFixed(2)),
        ],    
      ),
    );
  }
}