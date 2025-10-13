import 'package:bokly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bokly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> featchSuggestionsbook();
}
