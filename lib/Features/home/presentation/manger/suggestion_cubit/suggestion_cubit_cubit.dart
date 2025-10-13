// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:bokly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bokly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'suggestion_cubit_state.dart';

class SuggestionCubitCubit extends Cubit<SuggestionCubitState> {
  SuggestionCubitCubit(this.homeRepo) : super(SuggestionCubitInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSuggestionBook() async {
    emit(SuggestionLoding());
    var response = await homeRepo.featchSuggestionsbook();
    response.fold(
      (Failure) {
        emit(SuggestionFailure(Failure.errorMessage));
      },
      (suggestionbook) {
        emit(SuggestionSuccess(suggestionbook));
      },
    );
  }
}
