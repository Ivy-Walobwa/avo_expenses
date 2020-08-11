import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350.0,
      child: Text('Chart'),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kgreenColor1,
            blurRadius: 1.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 1.0),
          )
        ],
        color: kgreenColor1,
        borderRadius: kbottomBorderRadius,
      ),
    );
  }
}