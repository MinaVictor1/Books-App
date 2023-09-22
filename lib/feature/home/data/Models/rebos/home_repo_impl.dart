import 'package:bookapp/core/errors/failures.dart';
import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo.dart';
import 'package:dartz/dartz.dart';

class Home_Repo_Impl implements HomeRepo {
  final ApiServise apiServise;

  Home_Repo_Impl({required this.apiServise});

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    var data = await apiServise.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');

    //here in our API we make a model only for items
    //for that we make it
    //if we took all info API we did not make it
    List<BookModel> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return right(books);
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
