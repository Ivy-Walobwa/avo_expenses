import 'package:flutter/material.dart';
import 'package:avo_expenses/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  TransactionList({this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
        final tx = transactions[index];
        return  ListTile(
          title: Text(
            tx.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            DateFormat.MMMMd().format(tx.date),
          ),
          trailing: Text('\$ ${tx.amount.toString()}',
              style: TextStyle(
                fontSize: 18.0,
              )),
        );
      },
        itemCount: transactions.length,
      ),
    );
  }
}
