import 'package:annual_financial_planning/models/transaction.dart';
import 'package:flutter/material.dart';

class ExpenseTransaction extends Transaction {
  final String paymentMethod;
  final String creditCardName;

  ExpenseTransaction({
    @required this.paymentMethod,
    this.creditCardName,
  });
}
