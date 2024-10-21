import 'package:flutter/material.dart';
import 'package:sumic_online/MODELS/cart_item.dart';

class Cart with ChangeNotifier {
  final Map<String, cart_Item> _items = {};
  
  Map<String, cart_Item> get items {
    return {..._items};
  }
  
  int get itemCount {
    return _items.length;
  }
  
  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, item) {
      total += item.price * item.quantity;
    });
    return total;
  }
  
  void addItem(String productId, String name, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (existingCartItem) => cart_Item(
          id: existingCartItem.id,
          name: existingCartItem.name,
          price: existingCartItem.price,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => cart_Item(
          id: productId,
          name: name,
          price: price,
          quantity: 1,
        ),
      );
    }
    notifyListeners();
  }
}
