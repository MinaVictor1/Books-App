import 'package:bookapp/feature/Splash/presentation/views/splashview.dart';
import 'package:bookapp/feature/home/presentation/view/booksdetailsview.dart';
import 'package:bookapp/feature/home/presentation/view/homepage.dart';
import 'package:go_router/go_router.dart';

abstract class Approute {
  static const kHomeview = '/HomePage';
  static const kBookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeview,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
