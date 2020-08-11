import 'package:avo_expenses/models/transaction.dart';
import 'package:flutter/cupertino.dart';

class Categories {
  final String categoryName;
  final Icon categoryIcon;
  double totalAmount;
  final List<Transaction> transactionList;

  Categories(
      { this.totalAmount,
      @required this.categoryIcon,
      @required this.categoryName,
      @required this.transactionList});
}
