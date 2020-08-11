import 'package:flutter/material.dart';

class ExpenseDate extends StatelessWidget {
  const ExpenseDate({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;

    return Container(
      padding:
      EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.01),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
            ),
          )),
      child: Text(
        'Feb 19\'',
        style: TextStyle(
            color: Colors.white,
            fontSize: width * 0.05,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}