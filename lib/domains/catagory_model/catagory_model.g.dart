// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catagory_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CatagoryModelAdapter extends TypeAdapter<CatagoryModel> {
  @override
  final int typeId = 2;

  @override
  CatagoryModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CatagoryModel(
      id: fields[1] as String,
      catagoryName: fields[2] as String,
      catagoryType: fields[4] as CatagoryType,
    );
  }

  @override
  void write(BinaryWriter writer, CatagoryModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.catagoryName)
      ..writeByte(4)
      ..write(obj.catagoryType);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatagoryModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CatagoryTypeAdapter extends TypeAdapter<CatagoryType> {
  @override
  final int typeId = 3;

  @override
  CatagoryType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CatagoryType.income;
      case 1:
        return CatagoryType.expance;
      default:
        return CatagoryType.income;
    }
  }

  @override
  void write(BinaryWriter writer, CatagoryType obj) {
    switch (obj) {
      case CatagoryType.income:
        writer.writeByte(0);
        break;
      case CatagoryType.expance:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CatagoryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
