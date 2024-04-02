// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transcation_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionModelAdapter extends TypeAdapter<TransactionModel> {
  @override
  final int typeId = 4;

  @override
  TransactionModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionModel(
      id: fields[1] as String,
      amount: fields[2] as String,
      catatype: fields[4] as String,
      date: fields[5] as String,
      transcationType: fields[6] as CatagoryType,
      paymentType: fields[7] as String,
      decs: fields[8] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.amount)
      ..writeByte(4)
      ..write(obj.catatype)
      ..writeByte(5)
      ..write(obj.date)
      ..writeByte(6)
      ..write(obj.transcationType)
      ..writeByte(7)
      ..write(obj.paymentType)
      ..writeByte(8)
      ..write(obj.decs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
