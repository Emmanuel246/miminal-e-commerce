import 'package:flutter/material.dart';
import 'package:minimal_shop/componenets/my_drawer.dart';
import 'package:minimal_shop/componenets/my_product_tile.dart';
import 'package:provider/provider.dart';
import 'package:minimal_shop/models/shop.dart';


class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"), 
        actions: [
          // go to cart button
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'), 
            icon: Icon(Icons.shopping_cart_outlined))
        ],
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView(
        children: [
          const SizedBox(height: 25,),
          // shop subtite
          Center(child: Text("Pick from a selected list of premium products",
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          )),
          // product list
           SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: products.length,
          padding: const EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
        
          // get an individual product from shop
          final product = products[index];
          // return as a product tile UI
          return MyProductTile(product: product);
        } )),
      ),
        ],
      )
    );
  }
}