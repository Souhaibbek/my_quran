import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity.dart';

abstract class HomeLocalDataSource {
  List<SurahEntity> fetchSurahData();
  List<AyahEntity> fetchAyahData(String number);
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final ApiService apiService;

  HomeLocalDataSourceImpl(this.apiService);

  @override
  List<AyahEntity> fetchAyahData(String number) {
    // TODO: implement fetchAyahData
    throw UnimplementedError();
  }

  @override
  List<SurahEntity> fetchSurahData() {
    // TODO: implement fetchSurahData
    throw UnimplementedError();
  }
}
