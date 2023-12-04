// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_db.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CartDBAdapter extends TypeAdapter<CartDB> {
  @override
  final int typeId = 2;

  @override
  CartDB read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CartDB(
      id: fields[0] as int,
      name: fields[1] as String,
      price: fields[3] as int,
      quantity: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CartDB obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartDBAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
