import 'package:avo_expenses/constants.dart';
import 'package:avo_expenses/screens/add_transaction_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/user_expenses.dart';

class ExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: kgreenColor1,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kgreenColor1,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: kgreenColor6,
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTransactionScreen(),
                    ),
                  ),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
            ),
          )
          );
        },
      ),
      body: SafeArea(
        child: UserExpenses(),
      ),
    );
  }
}
