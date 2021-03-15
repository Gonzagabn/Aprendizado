import 'package:flutter/material.dart';

void main() {
  runApp(AnnualFinancialPlanningApp());
}

class AnnualFinancialPlanningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Annual Financial Planning'),
      ),
      body: Center(
        child: Text('Versão Inicial'),
      ),
    );
  }
}
