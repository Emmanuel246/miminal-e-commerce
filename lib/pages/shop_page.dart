import 'package:flutter/material.dart';
import 'package:minimal_shop/componenets/my_drawer.dart';
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
      
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: ((context, index) {
        // get an individual product from shop
        final product = products[index];
        // return as a product tile UI
      } )),
    );
  }
}