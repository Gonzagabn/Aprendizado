import 'package:annual_financial_planning/models/transaction.dart';
import 'package:flutter/foundation.dart';

class ExpenseTransaction extends Transaction {
  final double expectedValue;
  final String paymentMethod;
  final String creditCardName;

  ExpenseTransaction({
    this.expectedValue,
    @required this.paymentMethod,
    this.creditCardName,
    @required String id,
    @required String title,
    @required double value,
    @required DateTime date,
    @required String recurrence,
  }) : super(
            id: id,
            title: title,
            value: value,
            date: date,
            recurrence: recurrence);
}
