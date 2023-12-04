part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.getCartQuatities() = _GetCartQuatities;

  const factory CartEvent.addToCart(Product product) = _AddToCart;
  const factory CartEvent.removeFromCart(int productId) = _RemoveFromCart;

  const factory CartEvent.incrementCartCount(int productId) =
      _IncrementCartCount;
  const factory CartEvent.decrementCartCount(int productId) =
      _DecrementCartCount;

  const factory CartEvent.createOrder(String total, List<Cart> cartItems) =
      _CreateOrder;

  const factory CartEvent.clearCart() = _ClearCart;
}
