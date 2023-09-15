import 'package:bookapp/feature/home/presentation/view/widgets/bestselleritem.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      //shrinkWrap: true, //take height for your child //remove when convert SliverToBoxAdapter to SliverFillRemaining
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomBestSellerItem(),
        );
      },
    );
  }
}
