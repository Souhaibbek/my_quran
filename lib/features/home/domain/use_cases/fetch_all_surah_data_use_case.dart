import 'package:dartz/dartz.dart';
import 'package:my_quran/core/utils/failure.dart';
import 'package:my_quran/core/utils/use_case.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity.dart';
import 'package:my_quran/features/home/domain/repos/home_repos.dart';

class FetchAllSurahDataUseCase extends UseCase<List<SurahEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchAllSurahDataUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<SurahEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchAllSurahData();
  }
}
