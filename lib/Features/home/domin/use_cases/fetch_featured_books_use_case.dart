import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:bokly_app/Features/home/domin/repo/home_repo.dart';
import 'package:bokly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  Future<Either<Failure, List<BookEntity>>> featchFeatureBooks()  {
    return homeRepo.featchFeatureBooks();
  }
}
