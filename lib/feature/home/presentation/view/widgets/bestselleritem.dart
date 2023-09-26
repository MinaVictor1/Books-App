import 'package:bookapp/constant.dart';
import 'package:bookapp/core/utils/approute.dart';
import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/BookRating.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBestSellerItem extends StatelessWidget {
  const CustomBestSellerItem({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(Approute.kBookDetailsView);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                imageUrl:
                    book.volumeInfo!.imageLinks?.smallThumbnail.toString() ??
                        ''),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo!.title.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGtSectraFine),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    book.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BookRating(
                          count: (book.volumeInfo?.pageCount).toString(),
                          rating: book.volumeInfo?.pageCount),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
