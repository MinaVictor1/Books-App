import 'package:bookapp/feature/search/presentation/view/widgets/SearchPageBody.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchPageBody()),
    );
  }
}
