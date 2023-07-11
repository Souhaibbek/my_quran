import 'package:hive/hive.dart';

part 'surah_entity.g.dart';

@HiveType(typeId: 0)
class SurahEntity {
  @HiveField(0)
  final String nameSurah;
  @HiveField(1)
  final String nameEn;
  @HiveField(2)
  final int numberOfSurah;
  @HiveField(3)
  final String type;
  @HiveField(4)
  final int length;

  SurahEntity({
    required this.nameEn,
    required this.type,
    required this.length,
    required this.nameSurah,
    required this.numberOfSurah,
  });
}
