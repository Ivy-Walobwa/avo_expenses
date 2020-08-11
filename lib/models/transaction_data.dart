import 'package:flutter/foundation.dart';
import '../models/transaction.dart';
import '../models/categories.dart';
import 'package:flutter/material.dart';
import 'dart:collection';

class TransactionData extends ChangeNotifier {

  final List<Categories> _categories = [
    Categories(
      totalAmount: 8420.0,
      categoryIcon: Icon(Icons.shopping_cart),
      categoryName: 'Shopping',
      transactionList: [],
    ),
    Categories(
      totalAmount: 700,
      categoryIcon: Icon(Icons.fastfood),
      categoryName: 'Fast Food',
      transactionList: []
    ),
    Categories(
        totalAmount: 300,
        categoryIcon: Icon(Icons.local_hospital),
        categoryName: 'Health',
        transactionList:  [
          Transaction(
            id: 't1',
            title: 'Painkillers',
            category: 'Health',
            amount: 20.00,
            date: DateTime.now(),
          ),
          Transaction(
            id: 't2',
            title: 'Weekly checkup',
            category: 'Health',
            amount: 150.00,
            date: DateTime.now(),
          )
        ],
    ),
  ];

  var _totalAmountSpent = 0.0;

  int get totalAmountSpent{
    return _totalAmountSpent.toInt();
  }

  int get categoriesLength{
    return _categories.length;
  }

  int getTransactionsLength(category){
    var length;

    _categories.forEach((cat) {
      if(cat.categoryName == category){
        length= cat.transactionList.length;
      }else{
        length = 0;
      }
    });
    return length;
  }

  UnmodifiableListView<Categories> get categories{
    return UnmodifiableListView(_categories);
  }

  UnmodifiableListView<Transaction> getTransactions(category){
    var list;
    _categories.forEach((cat) {
      if(cat.categoryName == category){
       list = cat.transactionList;
      }else{
        list = [];
      }
    });
    return list;
  }

  void addTransaction(category, icon, title, amount, date ){

    var foundCategory = _categories.firstWhere((cat) => cat.categoryName == category, orElse: () => null);

    if(foundCategory != null){

      foundCategory.totalAmount += amount;

      foundCategory.transactionList.add(Transaction(
        id: DateTime.now().toString() ,
        amount: amount,
        title: title,
        category: category,
        date: DateTime.now(),
      ));
    }else{
      _categories.add(
        Categories(
          categoryName: category,
          totalAmount: amount,
          categoryIcon: icon,
          transactionList: [
            Transaction(
              id: DateTime.now().toString(),
              title: title,
              amount: amount,
              category: category,
              date: DateTime.now(),
            )
          ]
        )
      );
    }
    notifyListeners();
  }
}
