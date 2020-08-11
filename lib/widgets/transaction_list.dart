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
      builder: (context, transactionData, index) {
        return transactionData.getTransactionsLength(category) > 0
            ? Expanded(
                child: ListView.builder(
                itemBuilder: (context, index) {
                  final tx = transactionData.getTransactions(category)[index];
                  return ListTile(
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
              ))
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text('No Transactions',
                  style: TextStyle(fontSize: 20.0),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.4),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Image.asset(
                      'images/waiting.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              );
      },
    );
  }
}
