import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/chart_card.dart';
import '../widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
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
  ];

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ChartCard(),
        Container(
            margin: EdgeInsets.symmetric(vertical: height * 0.02, horizontal: width * 0.03),
            child: Text(
              'History',
              style:
              TextStyle(fontWeight: FontWeight.w600, fontSize: 32.0),
            )),
        TransactionList(transactions: transactions)
      ],
    );
  }
}