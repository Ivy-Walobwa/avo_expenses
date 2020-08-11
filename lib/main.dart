import 'package:avo_expenses/screens/expense_detail_screen.dart';
import 'package:avo_expenses/screens/expenses_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context)=> ExpensesScreen(),
        '/detail': (context) => ExpenseDetailScreen()
      },
    );
  }
}

