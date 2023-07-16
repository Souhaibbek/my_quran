import 'package:hive/hive.dart';
import 'package:my_quran/features/home/data/models/ayah_model/ayah/ayah.dart';

part 'ayah_entity.g.dart';

@HiveType(typeId: 1)
class AyahEntity {
  @HiveField(0)
  final String type;
  @HiveField(1)
  final String nameAr;
  @HiveField(2)
  final String nameEn;
  @HiveField(3)
  final String nameEtr;
  @HiveField(4)
  final int numOfAyahs;
  @HiveField(5)
  final int num;

  @HiveField(6)
  final List<Ayah> ayahsList;

  AyahEntity({
    required this.num,
    required this.nameAr,
    required this.nameEn,
    required this.nameEtr,
    required this.type,
    required this.numOfAyahs,
    required this.ayahsList,
  });
}
