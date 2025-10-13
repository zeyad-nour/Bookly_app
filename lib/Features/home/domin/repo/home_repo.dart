import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> featchFeatureBooks();
  Future<List<BookEntity>> featchNewsBooks();
}
