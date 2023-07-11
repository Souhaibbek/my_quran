// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurahEntityAdapter extends TypeAdapter<SurahEntity> {
  @override
  final int typeId = 0;

  @override
  SurahEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurahEntity(
      nameEn: fields[1] as String,
      type: fields[3] as String,
      length: fields[4] as int,
      nameSurah: fields[0] as String,
      numberOfSurah: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SurahEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.nameSurah)
      ..writeByte(1)
      ..write(obj.nameEn)
      ..writeByte(2)
      ..write(obj.numberOfSurah)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(4)
      ..write(obj.length);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurahEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
