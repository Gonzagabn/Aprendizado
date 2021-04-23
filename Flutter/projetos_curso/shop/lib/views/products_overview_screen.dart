import 'package:flutter/material.dart';
import 'package:shop/widgets/product_grid.dart';

class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        centerTitle: true,
      ),
      body: ProductGrid(),
    );
  }
}
