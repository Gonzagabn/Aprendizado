import 'package:flutter/material.dart';

class Transaction {
  final String id;
  final String title;
  final double value;
  final DateTime date;
  final String recurrence;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.value,
    @required this.date,
    @required this.recurrence,
  });
}
