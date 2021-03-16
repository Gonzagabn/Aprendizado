import 'dart:math';

import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';

import 'components/expense_form.dart';
import 'components/expense_list.dart';

main() => runApp(AnnualFinancialPlanningApp());

class AnnualFinancialPlanningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _expenseTransactions = ExpenseTransaction(
    id: 'ExT1',
    title: 'Mart Minaix',
    value: 200,
    date: DateTime.now(),
    recurrence: 'Só hoje',
    paymentMethod: 'Débito',
  );
  final List<ExpenseTransaction> _expensetransactions = [];

  // List<ExpenseTransaction> get _recentTransactions {
  //   return _expensetransactions.where((tr) {
  //     return tr.date.isAfter(DateTime.now().subtract(
  //       Duration(days: 7),
  //     ));
  //   }).toList();
  // }

  _addTransaction(String title, double value, DateTime date, String recurrence,
      String paymentMethod) {
    final newExpenseTransaction = ExpenseTransaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: date,
      recurrence: recurrence,
      paymentMethod: paymentMethod,
    );

    setState(() {
      _expensetransactions.add(newExpenseTransaction);
    });

    Navigator.of(context).pop();
  }

  _removeTransaction(String id) {
    setState(() {
      _expensetransactions.removeWhere((tr) => tr.id == id);
    });
  }

  _openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return ExpenseForm(_addTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Annual Financial Planning'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ExpenseList(_expenseTransactions, _removeTransaction),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _openTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
