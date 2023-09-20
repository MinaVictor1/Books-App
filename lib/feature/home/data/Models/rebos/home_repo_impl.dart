import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo.dart';
import 'package:dartz/dartz.dart';

class Home_Repo_Impl implements HomeRepo {
  @override
  Future<Either<Failures, BookModel>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, BookModel>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
