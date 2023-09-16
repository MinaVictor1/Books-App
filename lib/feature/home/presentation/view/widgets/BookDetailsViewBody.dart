import 'package:bookapp/feature/home/presentation/view/widgets/BooksDetailsSection.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/SimiliarBooksSection.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false, // =====>
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                BooksDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimiliarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
