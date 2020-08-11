import 'package:flutter/material.dart';
import 'package:avo_expenses/constants.dart';

class TotalAmountSpent extends StatelessWidget {
  const TotalAmountSpent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '\$12 325',
          style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.w600),
        ),
        Text('/\$16 490',
            style: TextStyle(
                color: kgreenColor2,
                fontSize: 20.0,
                fontWeight: FontWeight.w600)),
      ],
    );
  }
}
