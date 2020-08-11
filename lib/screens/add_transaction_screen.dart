import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class AddTransactionScreen extends StatelessWidget {
  AddTransactionScreen({
    @required this.titleController,
    @required this.categoryController,
    @required this.amountController,
  });

  final TextEditingController titleController;
  final TextEditingController categoryController;
  final TextEditingController amountController;

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
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Category'),
//                      onChanged: (val)=>categoryInput = val,
            controller: categoryController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'amount'),
//                      onChanged: (val)=> amountInput = val,
            controller: amountController,
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
