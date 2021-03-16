import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';

import 'expense_item.dart';

class ExpenseList extends StatelessWidget {
  final List<ExpenseTransaction> expenseTransactions;
  final void Function(String) onRemove;

  ExpenseList(this.expenseTransactions, this.onRemove);

  @override
  Widget build(BuildContext context) {
    return expenseTransactions.isEmpty
        ? LayoutBuilder(
            builder: (ctx, constraints) {
              return Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Nenhuma Transação Cadastrada',
                    //style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              );
            },
          )
        : ListView.builder(
            itemCount: expenseTransactions.length,
            itemBuilder: (ctx, index) {
              final tr = expenseTransactions[index];
              return ExpenseItem(
                tr: tr,
                onRemove: onRemove,
              );
            },
          );
  }
}
