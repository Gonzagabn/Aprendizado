import 'package:annual_financial_planning/components/expense_table.dart';
import 'package:flutter/material.dart';

main() => runApp(AnnualFinancialPlanningApp());

class AnnualFinancialPlanningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final appBar = AppBar(
      title: Text('Annual Financial Planning'),
    );

    final availableHeight = mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top;

    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: availableHeight * 0.20,
              child: Card(
                margin: EdgeInsets.fromLTRB(6, 3, 6, 6),
                elevation: 5,
                child: Text('Aqui será o Card do Saldo'),
              ),
            ),
            Container(
              height: availableHeight * 0.20,
              child: Card(
                margin: EdgeInsets.fromLTRB(6, 3, 6, 6),
                elevation: 5,
                child: Text('Aqui será o Card da  Poupança'),
              ),
            ),
            Container(
              height: availableHeight * 0.50,
              child: Card(
                margin: EdgeInsets.fromLTRB(6, 3, 6, 6),
                elevation: 5,
                child: ExpenseTable(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
