import 'package:bookapp/core/utils/styles.dart';

import '../utils/borderradius.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: MaterialButton(
          onPressed: () {},
          color: backgroundColor,
          textColor: textColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? border.borderLeft,
            // Set your desired border radius here
          ),
          child: Text(text, style: Styles.textStyle18),
        ),
      ),
    );
  }
}
