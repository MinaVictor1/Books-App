import 'package:bookapp/feature/home/presentation/view/widgets/bestselleritem.dart';
import 'package:bookapp/feature/search/presentation/view/widgets/customtextfield.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          CustomTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: ListViewSearchItem())
        ],
      ),
    );
  }
}

class ListViewSearchItem extends StatelessWidget {
  const ListViewSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
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
