import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class ReusableIcon extends StatelessWidget {
  final IconData iconn;
  final String label;

  ReusableIcon({@required this.iconn, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconn,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kiconTextStyle,
        ),
      ],
    );
  }
}
