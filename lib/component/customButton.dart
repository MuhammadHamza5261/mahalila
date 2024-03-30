import 'package:flutter/material.dart';

import 'customText.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final Color buttonColor;
  final double radius;
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? textColor;
  final VoidCallback onTap;
  final bool loading;
  const CustomButton(
      {super.key,
      required this.width,
      required this.height,
      required this.buttonColor,
      required this.radius,
      required this.text,
      this.fontSize,
      this.weight,
      this.textColor,
      required this.onTap,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator()
              : TextWidget(
                  text: text,
                  fontSize: fontSize,
                  weight: weight,
                  color: textColor,
                ),
        ),
      ),
    );
  }
}
