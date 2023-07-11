import 'package:my_quran/features/home/domain/entities/ayah_entity.dart';

import 'ayah.dart';
import 'edition.dart';

class AyahModel extends AyahEntity {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  String? revelationType;
  int? numberOfAyahs;
  List<Ayah>? ayahs;
  Edition? edition;

  AyahModel({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.revelationType,
    this.numberOfAyahs,
    this.ayahs,
    this.edition,
  }) : super(
            ayahAr: ayahs!,
            nameSurahEn: englishName!,
            nameSurahTranslation: englishNameTranslation!,
            numberAyah: numberOfAyahs!);

  factory AyahModel.fromJson(Map<String, dynamic> json) => AyahModel(
        number: json['number'] as int?,
        name: json['name'] as String?,
        englishName: json['englishName'] as String?,
        englishNameTranslation: json['englishNameTranslation'] as String?,
        revelationType: json['revelationType'] as String?,
        numberOfAyahs: json['numberOfAyahs'] as int?,
        ayahs: (json['ayahs'] as List<dynamic>?)
            ?.map((e) => Ayah.fromJson(e as Map<String, dynamic>))
            .toList(),
        edition: json['edition'] == null
            ? null
            : Edition.fromJson(json['edition'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'englishNameTranslation': englishNameTranslation,
        'revelationType': revelationType,
        'numberOfAyahs': numberOfAyahs,
        'ayahs': ayahs?.map((e) => e.toJson()).toList(),
        'edition': edition?.toJson(),
      };
}
