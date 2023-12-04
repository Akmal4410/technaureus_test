import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/data/datasources/cart_datasource.dart';
import 'package:technaureus/data/mappers/cart_mapper.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/repositories/i_cart_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

@LazySingleton(as: ICartRepository)
class CartRepositoryImpl extends ICartRepository {
  CartRepositoryImpl(
    @Named.from(LocalCartDatasource) this._localDatasource,
    @Named.from(RemoteCartDataSource) this._remoteDataSource,
  );

  final CartDatasoucre _localDatasource;
  final CartDatasoucre _remoteDataSource;

  @override
  Future<Either<ApiResponseFailures, Map<String, Cart>>>
      getCartQuatities() async {
    final response = await _localDatasource.getCartQuatities();
    return response.fold(
      (failure) => left(failure),
      (cartDBMap) {
        Map<String, Cart> cartMap = {};
        cartDBMap.forEach((key, cartDB) {
          cartMap[key] = CartMapper.fromCartDB(cartDB);
        });
        return right(cartMap);
      },
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addToCart(Product product) async {
    final cartDB = CartMapper.fromProduct(product);
    final response = await _localDatasource.addToCart(cartDB);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(
      String productId) async {
    final response = await _localDatasource.removeFromCart(productId);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId) async {
    final response = await _localDatasource.incrementCartCount(productId);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId) async {
    final response = await _localDatasource.decrementCartCount(productId);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> clearCart() async {
    final response = await _localDatasource.clearCart();
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> createOrder(
      int totalPrice, List<Cart> cartItems) async {
    final cartModelList =
        cartItems.map((cart) => CartMapper.fromCart(cart)).toList();
    final response =
        await _remoteDataSource.createOrder(totalPrice, cartModelList);

    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }
}
