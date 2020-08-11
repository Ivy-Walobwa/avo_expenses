import 'package:avo_expenses/models/transaction_data.dart';
import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';
import 'package:provider/provider.dart';

String newTxTitle;
double newTxAmount;
String newTxCategory;

class AddTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(height * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Text(
                'New Transaction',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: kgreenColor1),
              ),
              IconButton(
                icon: Icon(
                  Icons.clear,
                  color: kgreenColor1,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'title'),
                  onChanged: (value) => newTxTitle = value,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'amount'),
                  onChanged: (val) => newTxAmount = double.parse(val),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'category'),
                  onChanged: (val) => newTxCategory = val,
                ),
//                FlatButton.icon(
//                  padding: EdgeInsets.all(0.0),
//                  onPressed: (){},
//                  icon: Icon(Icons.label, color: kgreenColor1,),
//                  label: Text('Category'),
//                ),
                FlatButton.icon(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {},
                  icon: Icon(
                    Icons.calendar_view_day,
                    color: kgreenColor1,
                  ),
                  label: Text(
                    'pick date',
                  ),
                ),
              ],
            ),
          ),
          FlatButton(
            child: Text(
              'Add Transaction',
            ),
            onPressed: () {
              if (newTxTitle == null) {
                Navigator.pop(context);
                return;
              }
              Provider.of<TransactionData>(context, listen: false)
                  .addTransaction(
                category: newTxCategory.trim(),
                title: newTxTitle.trim(),
                amount: newTxAmount,
              );
              Navigator.pop(context);
            },
            color: kgreenColor1,
            textColor: kgreenColor7,
          ),
        ],
      ),
    );
  }
}
