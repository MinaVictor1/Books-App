import 'package:bookapp/feature/home/presentation/view/widgets/featuredlistviewitem.dart';
import 'package:flutter/material.dart';

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
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
