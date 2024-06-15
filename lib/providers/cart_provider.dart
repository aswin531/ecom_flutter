import 'package:ecom/models/productsmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];

  List<Product> get cart => _cart;
  void toggleFavourite(Product product) {
    if (_cart.contains(product)) {
      for (Product element in _cart) {
        element.quantity++;
      }
    } else {
      _cart.add(product);
    }
    notifyListeners();
  }

  static CartProvider of(
    BuildContext context, {
    bool listen = true,
  }) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}




// void toggleFavourite(Product product) {
//   final index = _cart.indexWhere((p) => p.id == product.id);
//   if (index != -1) {
//     _cart[index].quantity++;
//   } else {
//     _cart.add(product);
//   }
//   notifyListeners();
// }
