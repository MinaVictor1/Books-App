import 'package:bloc/bloc.dart';
import 'package:bookapp/feature/home/data/Models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit() : super(FeatureBooksInitial());
}
