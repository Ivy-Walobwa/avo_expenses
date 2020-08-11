import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class AvoScore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(
      '821',
      style: TextStyle(
          color: kgreenColor4,
          fontSize: 24.0,
          fontWeight: FontWeight.bold),
    );
  }
}
