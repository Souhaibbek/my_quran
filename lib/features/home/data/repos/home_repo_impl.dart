import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_quran/core/error_handling/failure.dart';
import 'package:my_quran/features/home/data/data_source/home_local_data_source.dart';
import 'package:my_quran/features/home/data/data_source/home_remote_data_source.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';
import 'package:my_quran/features/home/domain/repos/home_repos.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImpl({
    required this.homeLocalDataSource,
    required this.homeRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<AyahEntity>>> fetchAllAyahData(
      String? number) async {
    try {
      var ayahsLocalList = homeLocalDataSource.fetchAyahData(number ?? '1');
      if (ayahsLocalList.isNotEmpty) {
        return right(ayahsLocalList);
      }
      var ayahsRemoteList =
          await homeRemoteDataSource.fetchAyahData(number ?? '1');
      return right(ayahsRemoteList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<SurahEntity>>> fetchAllSurahData() async {
    try {
      var surahLocalList = homeLocalDataSource.fetchSurahData();
      if (surahLocalList.isNotEmpty) {
        return right(surahLocalList);
      }
      var surahsRemoteList = await homeRemoteDataSource.fetchSurahData();
      return right(surahsRemoteList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
