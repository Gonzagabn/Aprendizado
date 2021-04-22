import 'package:flutter/material.dart';
import 'package:shop/data/dummy_data.dart';
import 'package:shop/models/product.dart';
import 'package:shop/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = DUMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, index) => ProductItem(loadedProducts[index]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
