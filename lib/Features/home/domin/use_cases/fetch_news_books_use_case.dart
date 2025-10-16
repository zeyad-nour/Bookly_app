import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:bokly_app/Features/home/domin/repo/home_repo.dart'
    show HomeRepo;
import 'package:bokly_app/core/errors/failures.dart';
import 'package:bokly_app/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async {
    return await homeRepo.featchNewsBooks();
  }
}
