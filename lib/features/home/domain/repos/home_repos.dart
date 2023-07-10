import 'package:dartz/dartz.dart';
import 'package:my_quran/core/utils/failure.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SurahEntity>>> fetchAllSurahData();
  Future<Either<Failure, List<AyahEntity>>> fetchAllAyahData();
}
