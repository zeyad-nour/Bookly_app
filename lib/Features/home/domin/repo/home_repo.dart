import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:bokly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookEntity>>> featchFeatureBooks();
  Future<Either<Failure,List<BookEntity>>> featchNewsBooks();
}
