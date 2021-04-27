import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/providers/orders.dart';
import 'package:shop/widgets/app_drawer.dart';
import 'package:shop/widgets/order_widget.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Orders orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (ctx, index) => OrderWidget(orders.items[index]),
      ),
    );
  }
}
