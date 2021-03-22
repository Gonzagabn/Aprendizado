import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';
import '../models/expense_transaction.dart';

class FormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ExpenseTransaction expenseTransaction =
        ModalRoute.of(context).settings.arguments as ExpenseTransaction;

    return Scaffold(
      appBar: AppBar(
        title: Text('New Expense 2'),
      ),
      body: Text(expenseTransaction.title),
    );
  }
}
