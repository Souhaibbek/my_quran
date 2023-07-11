import 'package:hive/hive.dart';
import 'package:my_quran/core/utils/api_service.dart';
import 'package:my_quran/core/utils/constants.dart';
import 'package:my_quran/features/home/domain/entities/ayah_entity/ayah_entity.dart';
import 'package:my_quran/features/home/domain/entities/surah_entity/surah_entity.dart';

abstract class HomeLocalDataSource {
  List<SurahEntity> fetchSurahData();
  List<AyahEntity> fetchAyahData(String number);
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  final ApiService apiService;

  HomeLocalDataSourceImpl(this.apiService);

  @override
  List<AyahEntity> fetchAyahData(String number) {
    var box = Hive.box<AyahEntity>(kAyahBox);
    return box.values.toList();
  }

  @override
  List<SurahEntity> fetchSurahData() {
    var box = Hive.box<SurahEntity>(kSurahBox);
    return box.values.toList();
  }
}
