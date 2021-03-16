import 'package:annual_financial_planning/models/expense_transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ExpenseItem extends StatelessWidget {
  final ExpenseTransaction tr;
  final void Function(String p1) onRemove;

  const ExpenseItem({
    Key key,
    @required this.tr,
    @required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              DateFormat('d-MMM').format(tr.date),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Text(
              tr.title,
              textAlign: TextAlign.center,
              //style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: Text(
              'R\$${tr.value}',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
