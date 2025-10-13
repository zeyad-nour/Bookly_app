// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:bokly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bokly_app/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.homeRepo) : super(BestSellerInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerItems() async {
    emit(BestSellerLoding());
    var Response = await homeRepo.featchBestSellerBooks();
    Response.fold(
      (Failure) => emit(BestSellerFailure(Failure.errorMessage)),
      (bestSeller) => emit(BestSellerSuccess(bestSeller)),
    );
  }
}
