import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';
import '../widgets/user_transaction.dart';

class ExpenseDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kgreenColor1,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: UserTransaction(),
        ),
      ),
    );
  }
}



