import 'package:flutter/material.dart';
import 'package:minimal_shop/models/product.dart';

class Shop extends ChangeNotifier {
  // productt for sale
  final List<Product> _shop = [
    // product 1
    Product(
        name: 'Product 1',
        price: 90.00,
        description:
            "Item Description, more and more and more they are raining riots here athletico madrid",
            imagePath: 'assets/dodge_car.jpg',
            ),
            
    // product 2
    Product(name: 'Product 2', price: 50.00, description: "Item Description", imagePath: 'assets/car3.jpeg',),
    // product 3
    Product(name: 'Product 3', price: 20.00, description: "Item Description", imagePath: 'assets/dodge_car_2.jpg'),
    // product 4
    Product(name: 'Product 4', price: 80.00, description: "Item Description", imagePath: 'assets/dodge_1970-10.jpeg'),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
