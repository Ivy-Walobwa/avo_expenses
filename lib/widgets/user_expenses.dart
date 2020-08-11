import 'package:flutter/material.dart';
import '../widgets/expense_date.dart';
import '../widgets/avo_expenses.dart';
import '../widgets/avo_profile.dart';

class UserExpenses extends StatelessWidget {
  //  String titleInput;
//  String categoryInput;
//  String amountInput;

  final titleController = TextEditingController();
  final categoryController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;

    return Column(
      children: <Widget>[
        AvoProfile(),
        Container(
          height: height * 0.2 ,
          padding: EdgeInsets.symmetric(horizontal: width * 0.07),
          child: Row(
            children: <Widget>[
              Text(
                'Expenses on ',
                style: TextStyle(color: Colors.white, fontSize:width * 0.1,),
              ),
              SizedBox(
                width: width * 0.04,
              ),
              ExpenseDate()
            ],
          ),
        ),
        AvoExpenses(),
      ],
    );
  }
}


