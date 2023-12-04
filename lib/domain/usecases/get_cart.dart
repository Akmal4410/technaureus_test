import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/repositories/i_cart_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class GetCart {
  Future<Either<ApiResponseFailures, Map<String, Cart>>> getCartQuatities();
  Future<Either<ApiResponseFailures, Unit>> addToCart(Product product);
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(String productId);
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId);
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId);

  Future<Either<ApiResponseFailures, Unit>> clearCart();
  Future<Either<ApiResponseFailures, Unit>> createOrder(
      int totalPrice, List<Cart> cartItems);
}

@LazySingleton(as: GetCart)
class GetCartImpl extends GetCart {
  GetCartImpl(this._iCartRepository);

  final ICartRepository _iCartRepository;
  @override
  Future<Either<ApiResponseFailures, Map<String, Cart>>> getCartQuatities() {
    return _iCartRepository.getCartQuatities();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addToCart(Product product) {
    return _iCartRepository.addToCart(product);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(String productId) {
    return _iCartRepository.removeFromCart(productId);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId) {
    return _iCartRepository.incrementCartCount(productId);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId) {
    return _iCartRepository.decrementCartCount(productId);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> clearCart() {
    return _iCartRepository.clearCart();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> createOrder(
      int totalPrice, List<Cart> cartItems) {
    return _iCartRepository.createOrder(totalPrice, cartItems);
  }
}
