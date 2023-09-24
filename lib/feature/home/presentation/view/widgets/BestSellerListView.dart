import 'package:bookapp/core/widgets/custom_Loading_indicator.dart';
import 'package:bookapp/core/widgets/custom_error_widget.dart';
import 'package:bookapp/feature/home/presentation/manger/Newest_books/newest_books_cubit.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/bestselleritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            //shrinkWrap: true, //take height for your child //remove when convert SliverToBoxAdapter to SliverFillRemaining
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomBestSellerItem(book: state.books[index]),
              );
            },
          );
        } else if (state is NewestBooksFaluire) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
