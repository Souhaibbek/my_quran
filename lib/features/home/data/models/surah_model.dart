import 'package:my_quran/features/home/domain/entities/surah_entity.dart';

class SurahModel extends SurahEntity {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  int? numberOfAyahs;
  String? revelationType;

  SurahModel({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.numberOfAyahs,
    this.revelationType,
  }) : super(
            nameEn: englishName!,
            type: revelationType!,
            length: numberOfAyahs!,
            nameSurah: name!,
            numberOfSurah: number!);

  factory SurahModel.fromJson(Map<String, dynamic> json) => SurahModel(
        number: json['number'] as int?,
        name: json['name'] as String?,
        englishName: json['englishName'] as String?,
        englishNameTranslation: json['englishNameTranslation'] as String?,
        numberOfAyahs: json['numberOfAyahs'] as int?,
        revelationType: json['revelationType'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'number': number,
        'name': name,
        'englishName': englishName,
        'englishNameTranslation': englishNameTranslation,
        'numberOfAyahs': numberOfAyahs,
        'revelationType': revelationType,
      };
}
