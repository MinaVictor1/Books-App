import 'package:bookapp/core/utils/styles.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/BestSellerListView.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/customappbar.dart';
import 'package:bookapp/feature/home/presentation/view/widgets/featurebookslistview.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeatureBooksListView(),
              SizedBox(
                height: 50,
              ),
              Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
