import 'package:flutter/material.dart';

class ImageBestSeller extends StatelessWidget {
  const ImageBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 4, //the ratio between witdh to hight
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.red,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/test_image.png'))),
      ),
    );
  }
}
