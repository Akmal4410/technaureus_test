// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductDBAdapter extends TypeAdapter<ProductDB> {
  @override
  final int typeId = 0;

  @override
  ProductDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductDB(
      id: fields[0] as int,
      name: fields[1] as String,
      image: fields[2] as String,
      price: fields[3] as int,
      createdDate: fields[4] as DateTime,
      createdTime: fields[5] as String,
      modifiedDate: fields[6] as DateTime,
      modifiedTime: fields[7] as String,
      flag: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductDB obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.createdDate)
      ..writeByte(5)
      ..write(obj.createdTime)
      ..writeByte(6)
      ..write(obj.modifiedDate)
      ..writeByte(7)
      ..write(obj.modifiedTime)
      ..writeByte(8)
      ..write(obj.flag);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
