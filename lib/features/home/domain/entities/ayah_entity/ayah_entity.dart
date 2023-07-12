import 'package:hive/hive.dart';

part 'ayah_entity.g.dart';

@HiveType(typeId: 1)
class AyahEntity {
  @HiveField(0)
  final String ayahText;
  @HiveField(1)
  final int ayahNumber;

  AyahEntity({
    required this.ayahText,
    required this.ayahNumber,
  });
}
