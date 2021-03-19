import 'package:annual_financial_planning/components/expense_table.dart';
import 'package:flutter/material.dart';

main() => runApp(AnnualFinancialPlanningApp());

class AnnualFinancialPlanningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage(),
        theme: ThemeData(
          primaryColor: Colors.cyan[900],
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Annual Financial Planning'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 1,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Card(
                elevation: 5,
                child: Text('Aqui será o Card do Saldo'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1,
              child: Card(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                elevation: 5,
                child: Text('Aqui será o Card da  Poupança'),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
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
