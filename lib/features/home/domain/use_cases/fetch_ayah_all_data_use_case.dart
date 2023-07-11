import 'package:dartz/dartz.dart';
import 'package:my_quran/core/utils/failure.dart';
import 'package:my_quran/core/utils/use_case.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/repos/home_repos.dart';

class FetchAyahAllDataUseCase extends UseCase<List<AyahEntity>, String> {
  final HomeRepo homeRepo;

  FetchAyahAllDataUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<AyahEntity>>> call([String? param]) async {
    return await homeRepo.fetchAllAyahData(param);
  }
}
