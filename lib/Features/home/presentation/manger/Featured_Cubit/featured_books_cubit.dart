// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bokly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bokly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoding());
    var result = await homeRepo.featchFeaturedBooks();
    result.fold((failure) => emit(FeaturedBooksFailure(failure.errorMessage)), (books) => emit(FeaturedBooksSuccess(books)));
  }
}
