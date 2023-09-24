import 'package:bookapp/constant.dart';
import 'package:bookapp/core/utils/approute.dart';
import 'package:bookapp/core/utils/service_locator.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo_impl.dart';
import 'package:bookapp/feature/home/presentation/manger/Newest_books/newest_books_cubit.dart';
import 'package:bookapp/feature/home/presentation/manger/feature_book/feature_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupservicelocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //this from me to change status bar in first notes for app
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(
            getIt.get<Home_Repo_Impl>(), //void main()
          )..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<Home_Repo_Impl>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Approute.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
