import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModel>>> fetchSimiliarBooks(
      {required String category});
}
