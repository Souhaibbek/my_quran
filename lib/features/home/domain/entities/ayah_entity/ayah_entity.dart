import 'package:hive/hive.dart';

import '../../../data/models/ayah_model/ayah.dart';
part 'ayah_entity.g.dart';

@HiveType(typeId: 1)
class AyahEntity {
  @HiveField(0)
  final String nameSurahEn;
  @HiveField(1)
  final String nameSurahTranslation;
  @HiveField(2)
  final int numberAyah;
  @HiveField(3)
  final List<Ayah> ayahAr;

  AyahEntity({
    required this.ayahAr,
    required this.nameSurahEn,
    required this.nameSurahTranslation,
    required this.numberAyah,
  });
}
