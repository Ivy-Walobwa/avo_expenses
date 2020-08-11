import 'package:avo_expenses/models/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TransactionList extends StatelessWidget {
  TransactionList({this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionData>(
      builder: (context, transactionData, index){
        return Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              final tx = transactionData.getTransactions(category)[index];
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
            itemCount: transactionData.getTransactionsLength(category),
          ),
        );
      },
    );
  }
}
