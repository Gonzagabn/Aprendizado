import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseTable extends StatelessWidget {
  final expenseTransactions = [
    ExpenseTransaction(
      id: '01',
      title: 'despesa 1',
      expectedValue: '-',
      value: 200,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      expectedValue: '-',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      expectedValue: '-',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      expectedValue: '-',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      expectedValue: '-',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      expectedValue: '-',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      expectedValue: '-',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      expectedValue: '-',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      expectedValue: '-',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '02',
      title: 'despesa 2',
      expectedValue: '-',
      value: 760,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
    ExpenseTransaction(
      id: '03',
      title: 'despesa 3',
      expectedValue: '-',
      value: 45,
      date: DateTime.now(),
      recurrence: '-',
      paymentMethod: 'débito',
      creditCardName: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        child: Row(
          children: [
            Text('      Day                     '),
            Text('Title                  '),
            Text('Expected          '),
            Text('Value'),
          ],
        ),
      ),
      Expanded(
        flex: 1,
        child: SingleChildScrollView(
          child: DataTable(
            columnSpacing: 18,
            headingRowHeight: 0,
            dataRowHeight: 24,
            columns: [
              DataColumn(label: Text(' ')),
              DataColumn(label: Text(' ')),
              DataColumn(label: Text(' ')),
              DataColumn(label: Text(' ')),
            ],
            rows: expenseTransactions.map((row) {
              return DataRow(cells: [
                DataCell(
                  Text(DateFormat('d').format(row.date).toString()),
                  onTap: () {
                    print('on tap');
                  },
                ),
                DataCell(
                  Text(row.title),
                ),
                DataCell(
                  Text(
                    row.expectedValue.toString(),
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
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
        ),
      ),
    ]);
  }
}
