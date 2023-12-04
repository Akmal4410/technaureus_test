import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/data/models/cart/cart_db.dart';
import 'package:technaureus/data/models/cart/cart_model.dart';
import 'package:technaureus/utils/app_constants.dart';
import 'package:technaureus/utils/configure_hive_db.dart';
import 'package:technaureus/utils/network_service/domain/i_network_facade.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';
import 'package:technaureus/utils/network_service/network_helper.dart';

abstract class CartDatasoucre {
  Future<Either<ApiResponseFailures, Map<String, CartDB>>> getCartQuatities();
  Future<Either<ApiResponseFailures, Unit>> addToCart(CartDB cartItem);
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(String productId);
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId);
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId);

  Future<Either<ApiResponseFailures, Unit>> clearCart();
  Future<Either<ApiResponseFailures, Unit>> createOrder(
      int totalPrice, List<CartModel> cartItems);
}

@named
@LazySingleton(as: CartDatasoucre)
class LocalCartDatasource extends CartDatasoucre {
  @override
  Future<Either<ApiResponseFailures, Map<String, CartDB>>>
      getCartQuatities() async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      final cartQuantities =
          cartBox.values.fold<Map<String, CartDB>>({}, (previousValue, cartDB) {
        previousValue[cartDB.id.toString()] = cartDB;
        return previousValue;
      });
      return right(cartQuantities);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addToCart(CartDB cartItem) async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      await cartBox.put(cartItem.id.toString(), cartItem);
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(
      String productId) async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      await cartBox.delete(productId);
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId) async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      final cartItem = cartBox.get(productId);
      if (cartItem != null) {
        cartItem.quantity = cartItem.quantity + 1;
        await cartBox.put(productId, cartItem);
      }
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId) async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      final cartItem = cartBox.get(productId);
      if (cartItem != null) {
        if (cartItem.quantity == 1) {
          return await removeFromCart(productId);
        } else {
          cartItem.quantity = cartItem.quantity - 1;
          await cartBox.put(productId, cartItem);
        }
      }
      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> createOrder(
    int totalPrice,
    List<CartModel> cartItems,
  ) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> clearCart() async {
    try {
      final cartBox = MyLocalDB.getCartBoxDB();
      await cartBox.clear();

      final customerBox = MyLocalDB.getSelectedCustomerBoxDB();
      await customerBox.clear();

      return right(unit);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }
}

@named
@LazySingleton(as: CartDatasoucre)
class RemoteCartDataSource extends CartDatasoucre {
  RemoteCartDataSource(this._iNetworkFacade);

  final INetworkFacade _iNetworkFacade;

  @override
  Future<Either<ApiResponseFailures, Unit>> createOrder(
    int totalPrice,
    List<CartModel> cartItems,
  ) async {
    final customerBox = MyLocalDB.getSelectedCustomerBoxDB();
    final customerId = customerBox.get(HiveDB.cutomerId);
    if (customerId == null) {
      return left(
        const ApiResponseFailures.apiResponseError(
            message: "Please Select an Customer"),
      );
    }

    final products = cartItems.map((item) => item.toAddJson()).toList();

    final body = {
      "customer_id": customerId,
      "total_price": totalPrice,
      "products": products,
    };

    final response = await _iNetworkFacade.postRequest(
      'orders/',
      body: body,
    );

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          debugPrint(apiResponse.data.toString());
          return right(unit);
        } else {
          return left(
            ApiResponseFailures.apiResponseError(
              message: apiResponse.message.toString(),
            ),
          );
        }
      },
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addToCart(CartDB cartItem) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> decrementCartCount(
      String productId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Map<String, CartDB>>> getCartQuatities() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> incrementCartCount(
      String productId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> removeFromCart(String productId) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> clearCart() {
    throw UnimplementedError();
  }
}
