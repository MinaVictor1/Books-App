import 'package:bloc/bloc.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatureBooks() async {
    emit(FeatureBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (faliure) {
        emit(FeatureBooksFaluire(faliure.errMessage));
      },
      (books) {
        emit(FeatureBooksSuccess(books));
      },
    );
  }
}
