import './SimliarBooksListView.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimiliarBooksSection extends StatelessWidget {
  const SimiliarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 12,
        ),
        const SimliarBooksListView()
      ],
    );
  }
}
