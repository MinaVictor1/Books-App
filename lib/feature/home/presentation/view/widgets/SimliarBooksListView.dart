import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class SimliarBooksListView extends StatelessWidget {
  const SimliarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 12),
            child: CustomBookImage(
                imageUrl:
                    'https://images.inc.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg'),
          );
        },
      ),
    );
  }
}
