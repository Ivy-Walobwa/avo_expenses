import 'package:flutter/cupertino.dart';

class Categories{
  final String categoryName;
  final Icon categoryIcon;
  final double totalAmount;

  Categories({
    @required this.totalAmount,
    @required this.categoryIcon,
    @required this.categoryName});

}