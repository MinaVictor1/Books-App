import 'package:bookapp/core/utils/api_service.dart';
import 'package:bookapp/feature/home/data/Models/rebos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupservicelocator() {
  getIt.registerSingleton<ApiServise>(ApiServise(dio: Dio()));
  getIt.registerSingleton<Home_Repo_Impl>(
      Home_Repo_Impl(apiServise: getIt.get<ApiServise>()));
}
