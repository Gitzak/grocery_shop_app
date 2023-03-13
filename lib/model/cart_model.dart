import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item on sale
  final List _shopItems = [
    ["Avocado", "40.00", "lib/images/avocado.png", Colors.green],
    ["Bananas", "40.00", "lib/images/bananas.png", Colors.yellow],
    ["Grapes", "40.00", "lib/images/grapes.png", Colors.purple],
    ["Melon", "40.00", "lib/images/melon.png", Colors.amber],
    ["Strawberry", "40.00", "lib/images/strawberry.png", Colors.pink],
  ];

  get shopItems => _shopItems;

  // list of cart items
  final List _cartItems = [];

  get cartItems => _cartItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
