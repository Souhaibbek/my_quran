import '../../data/models/ayah_model/ayah.dart';

class AyahEntity {
  final String nameSurahEn;
  final String nameSurahTranslation;
  final int numberAyah;
  final List<Ayah> ayahAr;

  AyahEntity({
    required this.ayahAr,
    required this.nameSurahEn,
    required this.nameSurahTranslation,
    required this.numberAyah,
  });
}
