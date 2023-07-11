import 'package:dartz/dartz.dart';
import 'package:my_quran/core/utils/failure.dart';
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
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<SurahEntity>>> fetchAllSurahData() {
    // TODO: implement fetchAllSurahData
    throw UnimplementedError();
  }
}
