import 'package:api_riverpoad/utils/extensions.dart';
import 'package:flutter/material.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText(
      {super.key, this.fontSize, this.fontWeight, this.text});
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: context.textTheme.headlineSmall?.copyWith(
        color: Colors.white,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
