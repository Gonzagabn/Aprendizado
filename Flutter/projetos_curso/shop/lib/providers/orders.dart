import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shop/providers/cart.dart';

class Order {
  final String? id;
  final double? total;
  final List<CartItem>? products;
  final DateTime? date;

  Order({
    this.id,
    this.total,
    this.products,
    this.date,
  });
}

class Orders with ChangeNotifier {
  static const _url = 'flutter-2ce78-default-rtdb.firebaseio.com/orders';
  List<Order> _items = [];

  List<Order> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Future<void> addOrder(Cart cart) async {
    final date = DateTime.now();
    final response = await http.post(
      Uri.https(_url, '.json'),
      body: json.encode({
        'total': cart.totalAmount,
        'date': date.toIso8601String(),
        'products': cart.items.values
            .map((cartItem) => {
                  'id': cartItem.id,
                  'productId': cartItem.productId,
                  'title': cartItem.title,
                  'quantity': cartItem.quantity,
                  'price': cartItem.price,
                })
            .toList(),
      }),
    );

    _items.insert(
      0,
      Order(
        id: json.decode(response.body)['name'],
        total: cart.totalAmount,
        date: DateTime.now(),
        products: cart.items.values.toList(),
      ),
    );
    notifyListeners();
  }
}
