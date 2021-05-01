import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});
  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(bottom: 5.0),
        child: Center(
          child: Text(
            buttonTitle,
            style: klargeButtonTextStyle,
          ),
        ),
        color: kbottomContainerColor,
        height: kbottomContainer,
        width: double.infinity,
      ),
    );
  }
}
