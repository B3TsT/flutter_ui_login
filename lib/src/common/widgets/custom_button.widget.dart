import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.textStyleColor,
    required this.boxDecorationColor,
    this.marginSize = 0,
    this.fontWeight = FontWeight.bold,
  });
  final String text;
  final Color textStyleColor;
  final Color boxDecorationColor;
  final double marginSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: marginSize),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: boxDecorationColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textStyleColor,
            fontSize: 16,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}