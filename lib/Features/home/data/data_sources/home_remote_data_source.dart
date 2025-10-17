import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future <List<BookEntity>>fetchFeaturedBooks();
  Future <List<BookEntity>>fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}