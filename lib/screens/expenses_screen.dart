import 'package:avo_expenses/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/user_expenses.dart';
import '../screens/add_transaction_screen.dart';

class ExpensesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreenColor1,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kgreenColor1,
        child: Icon(Icons.add),
        onPressed: () {
        },
      ),
      body: SafeArea(
        child: UserExpenses(),
      ),
    );
  }
}
