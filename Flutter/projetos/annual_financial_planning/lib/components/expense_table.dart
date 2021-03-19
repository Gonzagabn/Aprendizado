import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseTable extends StatelessWidget {
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
    return Container(
      child: DataTable(
        columnSpacing: 0,
        dataRowHeight: 25,
        columns: [
          DataColumn(label: Text('day')),
          DataColumn(label: Text('title')),
          DataColumn(label: Text('\$')),
        ],
        rows: expenseTransactions.map((row) {
          return DataRow(cells: [
            DataCell(
              Text(DateFormat('d').format(row.date).toString()),
            ),
            DataCell(
              Text(row.title),
            ),
            DataCell(
              Text(
                row.value.toString(),
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                ),
              ),
            ),
          ]);
        }).toList(),
      ),
    );
  }
}
