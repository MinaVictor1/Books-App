import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4, //the ratio between width to height
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/test_image.png'))),
      ),
    );
  }
}
