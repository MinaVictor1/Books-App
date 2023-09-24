import 'package:bookapp/core/widgets/custom_Loading_indicator.dart';
import 'package:bookapp/core/widgets/custom_error_widget.dart';
import 'package:bookapp/feature/home/presentation/manger/feature_book/feature_books_cubit.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/CustomBookImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.30,
            child: ListView.builder(
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: CustomBookImage(
                      imageUrl: state.books[index].volumeInfo?.imageLinks
                              ?.smallThumbnail ??
                          'https://www.studytienganh.vn/upload/2021/05/98140.png'),
                );
              },
            ),
          );
        } else if (state is FeatureBooksFaluire) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
