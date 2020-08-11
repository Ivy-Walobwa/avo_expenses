import 'package:flutter/foundation.dart';

class Transaction {
  final String id;
  final String title;
  final String category;
  final double amount;
  final DateTime date;

  Transaction(
      {@required this.id,
      @required this.amount,
      @required this.category,
      @required this.date,
      @required this.title});
}
