import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class ChartCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;

    return Container(
      width: double.infinity,
      height: height * 0.4,
      child: Text('Chart'),
      decoration: BoxDecoration(
        color: kgreenColor1,
        borderRadius: kbottomBorderRadius,
      ),
    );
  }
}