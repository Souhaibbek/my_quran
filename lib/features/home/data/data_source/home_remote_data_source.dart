import 'package:hive/hive.dart';
import 'package:my_quran/core/functions.dart';
import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

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
    List<SurahEntity> surahs = getSurahList(data);
    saveDataToLocal(surahs, kSurahBox);
    return surahs;
  }

  @override
  Future<List<AyahEntity>> fetchAyahData(String number) async {
    var data = await apiService.get(endPoint: 'surah/$number');
    List<AyahEntity> ayahs = getAyahList(data);
    saveDataToLocal(ayahs, kAyahBox);
    return ayahs;
  }

  List<SurahEntity> getSurahList(Map<String, dynamic> data) {
    List<SurahEntity> surahs = [];
    for (var item in data['data']) {
      surahs.add(item);
    }
    return surahs;
  }

  List<AyahEntity> getAyahList(Map<String, dynamic> data) {
    List<AyahEntity> ayahs = [];
    for (var item in data['data']) {
      ayahs.add(item);
    }
    return ayahs;
  }
}
