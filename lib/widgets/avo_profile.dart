import 'package:flutter/material.dart';
import '../widgets/avo_score.dart';

class AvoProfile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height =  MediaQuery.of(context).size.height;
    final width =  MediaQuery.of(context).size.width;
    return Container(
      height: height * 0.15,
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Row(
        children: <Widget>[
          Text(
            'AvoScore: ',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          AvoScore(),
          Expanded(child: SizedBox()),
          Icon(
            Icons.account_circle,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}