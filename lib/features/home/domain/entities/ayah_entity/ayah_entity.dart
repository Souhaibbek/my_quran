import 'package:hive/hive.dart';
import 'package:my_quran/features/home/data/models/ayah_model/ayah.dart';

@HiveType(typeId: 1)
class AyahEntity {
  @HiveField(0)
  int num;
  @HiveField(1)
  String nameAr;
  @HiveField(2)
  String nameEn;
  @HiveField(3)
  String nameEtr;
  @HiveField(4)
  String type;
  @HiveField(5)
  int numOfAyahs;
  @HiveField(6)
  List<Ayah> ayahsList;

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
