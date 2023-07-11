import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<SurahEntity>> fetchSurahData();
  Future<List<AyahEntity>> fetchAyahData(String number);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<SurahEntity>> fetchSurahData() async {
    var data = await apiService.get(endPoint: 'surah');
    List<SurahEntity> surahs = [];
    for (var item in data['data']) {
      surahs.add(item);
    }
    return surahs;
  }

  @override
  Future<List<AyahEntity>> fetchAyahData(String number) async {
    var data = await apiService.get(endPoint: 'surah/$number');
    List<AyahEntity> ayahs = [];
    for (var item in data['data']) {
      ayahs.add(item);
    }
    return ayahs;
  }
}
