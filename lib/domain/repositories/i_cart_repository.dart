import 'package:dartz/dartz.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class ICartRepository {
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
