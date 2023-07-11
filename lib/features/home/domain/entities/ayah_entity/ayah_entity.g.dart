// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AyahEntityAdapter extends TypeAdapter<AyahEntity> {
  @override
  final int typeId = 1;

  @override
  AyahEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AyahEntity(
      ayahAr: (fields[3] as List).cast<Ayah>(),
      nameSurahEn: fields[0] as String,
      nameSurahTranslation: fields[1] as String,
      numberAyah: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AyahEntity obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nameSurahEn)
      ..writeByte(1)
      ..write(obj.nameSurahTranslation)
      ..writeByte(2)
      ..write(obj.numberAyah)
      ..writeByte(3)
      ..write(obj.ayahAr);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AyahEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
