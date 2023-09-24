import './booksaction.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/BookRating.dart';

import './CustomAppBarBookDetails.dart';
import 'package:flutter/material.dart';

import 'CustomBookImage.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomAppBarBookDetails(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.28),
          child: const CustomBookImage(
              imageUrl:
                  'https://images.inc.com/uploaded_files/image/1920x1080/getty_655998316_2000149920009280219_363765.jpg'),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Mina Victor',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BookRating(
              count: '1',
              rating: 4,
            )
          ],
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
