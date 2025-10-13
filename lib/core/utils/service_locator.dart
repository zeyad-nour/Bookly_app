import 'package:bokly_app/Features/home/data/repos/home_repo_implemnt.dart';
import 'package:bokly_app/core/utils/api_serves.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImplemnt>(
    HomeRepoImplemnt(getIt.get<ApiService>()),
  );
}
