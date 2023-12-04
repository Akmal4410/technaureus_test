class CartModel {
  final int id;
  final String name;
  final int price;
  final int quantity;
  CartModel({
    required this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  Map<String, dynamic> toAddJson() {
    return {
      "product_id": id,
      "quantity": quantity,
      "price": price,
    };
  }
}
