import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class AddTransactionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10.0,
        left: 20.0,
        right: 20.0,
        bottom: 30.0,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'title'),
//                      onChanged: (value){titleInput = value;},
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Category'),
//                      onChanged: (val)=>categoryInput = val,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'amount'),
//                      onChanged: (val)=> amountInput = val,
          ),
          FlatButton(
            child: Text('Add Transaction'),
            onPressed: () {},
            color: kgreenColor1,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
