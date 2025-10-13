// ignore_for_file: non_constant_identifier_names

import 'package:bokly_app/Features/home/data/Models/book_model/book_model.dart';
import 'package:bokly_app/Features/home/data/repos/home_repo.dart';
import 'package:bokly_app/core/errors/failures.dart';
import 'package:bokly_app/core/utils/api_serves.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImplemnt implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplemnt(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> featchBestSellerBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=programing%20&Filtearing=free-books&q%3D=programing&sorting=newest&Filtearing=free-books&q%3D=programing%20with%20dart%20and%20flutter&sorting=newest',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming',
      );

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> featchSuggestionsbook() async {
    try {
      var Data = await apiService.get(
        endPoint:
            "volumes?q=programing%20&Filtearing=free-books&q%3D=programing&sorting=newest&Filtearing=free-books&q%3D=OOP&sorting=newest",
      );
      List<BookModel> suggestionBooks = [];
      for (var item in Data['items']) {
        suggestionBooks.add(BookModel.fromJson(item));
      }
      return right(suggestionBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioError(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
