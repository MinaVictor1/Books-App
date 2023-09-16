import 'package:bookapp/core/widgets/custombutton.dart';
import 'package:bookapp/core/utils/borderradius.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
            text: '125€',
            backgroundColor: Colors.white,
            textColor: Colors.black),
        CustomButton(
          text: 'free preview',
          backgroundColor: Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: border.borderRight,
        )
      ],
    );
  }
}
