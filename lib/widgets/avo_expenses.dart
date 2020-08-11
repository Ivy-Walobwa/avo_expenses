import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/categories_list.dart';
import '../widgets/total_amount_spent.dart';

class AvoExpenses extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kgreenColor4,
          borderRadius: ktopBorderRadius,
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: MediaQuery.of(context).size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TotalAmountSpent(),
                  Image.asset(
                    'images/avo.png',
                    scale: 2.0,
                  ),
                ],
              ),
            ),
            CategoriesList()
          ],
        ),
      ),
    );
  }
}