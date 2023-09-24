import 'package:flutter/material.dart';

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
          child: Text('wait'),
          //child: CustomBestSellerItem(),
        );
      },
    );
  }
}
