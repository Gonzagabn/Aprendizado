import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseList extends StatelessWidget {
  final expenseTransactions = [
    ExpenseTransaction(
      id: '01',
      title: 'despesa 1',
      value: 200,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: [
        //DataColumn(label: Text('id')),
        DataColumn(label: Text('day')),
        DataColumn(label: Text('title')),
        DataColumn(label: Text('\$')),
        DataColumn(label: Text('rec')),
      ],
      rows: expenseTransactions.map((exTr) {
        return DataRow(cells: [
          // DataCell(
          //   Text(exTr.id),
          // ),
          DataCell(
            Text(DateFormat('d').format(exTr.date).toString()),
          ),
          DataCell(
            Text(exTr.title),
          ),
          DataCell(
            Text(
              exTr.value.toString(),
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
          DataCell(
            Text(exTr.recurrence),
          ),
        ]);
      }).toList(),
    );
  }
}
