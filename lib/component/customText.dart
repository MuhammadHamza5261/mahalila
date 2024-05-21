import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? weight;
  final Color? color;
  final String? fontFamily;
  final TextAlign? textAlign;
  const TextWidget({super.key, required this.text, this.fontSize, this.weight, this.color, this.fontFamily, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: textAlign,
        text, style: TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: weight,
        color: color,
    )
    );
  }
}
