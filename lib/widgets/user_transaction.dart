import 'package:flutter/material.dart';
import '../widgets/chart_card.dart';
import '../widgets/transaction_list.dart';

class UserTransaction extends StatelessWidget {
  final String categoryName;
  UserTransaction({this.categoryName});

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
        TransactionList(category: categoryName)
      ],
    );
  }
}