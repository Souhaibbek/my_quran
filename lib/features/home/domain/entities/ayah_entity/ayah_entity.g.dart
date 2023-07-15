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
      num: fields[5] as int,
      nameAr: fields[1] as String,
      nameEn: fields[2] as String,
      nameEtr: fields[3] as String,
      type: fields[0] as String,
      numOfAyahs: fields[4] as int,
      ayahsList: (fields[6] as List).cast<Ayah>(),
    );
  }

  @override
  void write(BinaryWriter writer, AyahEntity obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.nameAr)
      ..writeByte(2)
      ..write(obj.nameEn)
      ..writeByte(3)
      ..write(obj.nameEtr)
      ..writeByte(4)
      ..write(obj.numOfAyahs)
      ..writeByte(5)
      ..write(obj.num)
      ..writeByte(6)
      ..write(obj.ayahsList);
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
