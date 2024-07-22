import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    Product(
      name: "Product 1", 
      price: 99.99, 
      description: "is it about a specific project, your organization, or an event? Let me know", 
      //imagePath: imagePath
    ),
    Product(
      name: "Product 2", 
      price: 99.99, 
      description: "is it about a specific project, your organization, or an event? Let me know", 
      //imagePath: imagePath
    ),
    Product(
      name: "Product 3", 
      price: 99.99, 
      description: "is it about a specific project, your organization, or an event? Let me know", 
      //imagePath: imagePath
    ),
    Product(
      name: "Product 4", 
      price: 99.99, 
      description: "is it about a specific project, your organization, or an event? Let me know", 
      //imagePath: imagePath
    ),
  ];

  //user cart
  List<Product> _cart = [];


  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;


  //add item to cart
  void addToCart(Product item){
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item){
    _cart.remove(item);
    notifyListeners();
  }

}