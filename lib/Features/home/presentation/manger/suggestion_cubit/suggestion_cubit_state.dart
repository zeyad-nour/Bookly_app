part of 'suggestion_cubit_cubit.dart';

sealed class SuggestionCubitState extends Equatable {
  const SuggestionCubitState();

  @override
  List<Object> get props => [];
}

final class SuggestionCubitInitial extends SuggestionCubitState {}

final class SuggestionLoding extends SuggestionCubitState {}

final class SuggestionSuccess extends SuggestionCubitState {
  final List<BookModel> suggestionbook;
  const SuggestionSuccess(this.suggestionbook);
}

final class SuggestionFailure extends SuggestionCubitState {
  final String errorMessage;

  const SuggestionFailure(this.errorMessage);
}
