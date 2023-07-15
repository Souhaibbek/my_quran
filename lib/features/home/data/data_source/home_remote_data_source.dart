import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/features/home/data/models/ayah_model/ayah_model.dart';
import 'package:my_quran/features/home/data/models/surah_model.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<SurahEntity>> fetchSurahData();
  Future<List<AyahEntity>> fetchAyahData(int numberOfSurah);
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<SurahEntity>> fetchSurahData() async {
    var data = await apiService.get(endPoint: 'surah');
    List<SurahEntity> surahs = getSurahList(data);
    var box = Hive.box<SurahEntity>(kSurahBox);
    box.addAll(surahs);
    return surahs;
  }

  @override
  Future<List<AyahEntity>> fetchAyahData(int numberOfSurah) async {
    var data = await apiService.get(endPoint: 'surah/$numberOfSurah');
    List<AyahEntity> ayahs = [];
    data.forEach((key, value) {
      ayahs.add(AyahModel.fromJson(data['data']));
    });
    var box = Hive.box<AyahEntity>(kAyahBox);
    box.addAll(ayahs);
    log('addRemote');

    return ayahs;
  }

  List<SurahEntity> getSurahList(Map<String, dynamic> data) {
    List<SurahEntity> surahs = [];
    for (var item in data['data']) {
      surahs.add(SurahModel.fromJson(item));
    }
    return surahs;
  }

  List<AyahEntity> getAyahList(Map<String, dynamic> data) {
    List<AyahEntity> ayahs = [];
    data.forEach((key, value) {
      ayahs.add(AyahModel.fromJson(data['data']));
    });
    return ayahs;
  }
}
