import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

abstract class HomeLocalDataSource {
  List<SurahEntity> fetchSurahData();
  List<AyahEntity> fetchAyahData();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  HomeLocalDataSourceImpl();

  @override
  List<AyahEntity> fetchAyahData() {
    var box = Hive.box<AyahEntity>(kAyahBox);
    return box.values.toList();
  }

  @override
  List<SurahEntity> fetchSurahData() {
    var box = Hive.box<SurahEntity>(kSurahBox);
    return box.values.toList();
  }
}
