import 'package:hive_flutter/hive_flutter.dart';
part 'cart_db.g.dart';

@HiveType(typeId: 2)
class CartDB extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(3)
  final int price;

  @HiveField(4)
  int quantity;

  CartDB({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });
}
