import 'package:avo_expenses/models/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';
import 'package:provider/provider.dart';

class ChartCard extends StatelessWidget {
  final String category;
  ChartCard({this.category});

  @override
  Widget build(BuildContext context) {

    final height =  MediaQuery.of(context).size.height;

    return Consumer<TransactionData>(
      builder: (context, transactionData, index){
        return Container(
          width: double.infinity,
          height: height * 0.4,
          decoration: BoxDecoration(
            color: kgreenColor1,
            borderRadius: kbottomBorderRadius,
          ),
          child: Row(
            children: <Widget>[

            ],
          ),
        );
      },
    );
  }
}