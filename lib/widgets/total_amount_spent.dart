import 'package:avo_expenses/models/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';
import 'package:provider/provider.dart';

class TotalAmountSpent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TransactionData>(
      builder: (context, transactionData, index){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '\$ ${transactionData.calculateTotalAmountSpent()}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w600),
            ),
            Text('/\$16 490',
                style: TextStyle(
                    color: kgreenColor2,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600)),
          ],
        );
      },
    );
  }
}
