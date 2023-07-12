import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/features/home/data/data_source/home_local_data_source.dart';
import 'package:my_quran/features/home/data/data_source/home_remote_data_source.dart';
import 'package:my_quran/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(getIt.get<ApiService>())));
}
