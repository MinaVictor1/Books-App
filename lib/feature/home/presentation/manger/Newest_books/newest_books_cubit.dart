import 'package:bloc/bloc.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../data/Models/book_model/book_model.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var results = await homeRepo.fetchNewestBooks();

    results.fold((faliure) {
      emit(NewestBooksFaluire(faliure.errMessage));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
