import 'package:technaureus/data/models/cart/cart_db.dart';
import 'package:technaureus/data/models/cart/cart_model.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/domain/entities/product.dart';

class CartMapper {
  static CartDB fromProduct(Product product) {
    return CartDB(
      id: product.id,
      name: product.name,
      price: product.price,
      quantity: 1,
    );
  }

  static Cart fromCartDB(CartDB cartDB) {
    return Cart(
      id: cartDB.id,
      name: cartDB.name,
      price: cartDB.price,
      quantity: cartDB.quantity,
    );
  }

  static CartModel fromCart(Cart cart) {
    return CartModel(
      id: cart.id,
      name: cart.name,
      price: cart.price,
      quantity: cart.quantity,
    );
  }
}
