import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Product with ChangeNotifier {
  final String? id;
  final String? title;
  final String? description;
  final double? price;
  final String? imageUrl;
  bool isFavorite;

  Product(
      {this.id,
      @required this.title,
      @required this.description,
      @required this.price,
      @required this.imageUrl,
      this.isFavorite = false});

  void _toggleFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  Future<void> toggleFavorite() async {
    _toggleFavorite();

    try {
      final url = Uri.https(
          'flutter-2ce78-default-rtdb.firebaseio.com', '/products/$id.json');
      final response = await http.patch(
        url,
        body: json.encode({
          'isFavorite': isFavorite,
        }),
      );

      if (response.statusCode >= 400) {
        _toggleFavorite();
      }
    } catch (error) {
      _toggleFavorite();
    }
  }
}
