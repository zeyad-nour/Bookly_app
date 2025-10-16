// ignore_for_file: avoid_types_as_parameter_names

import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:bokly_app/Features/home/domin/repo/home_repo.dart';
import 'package:bokly_app/core/errors/failures.dart';
import 'package:bokly_app/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.featchFeatureBooks();
  }
}


