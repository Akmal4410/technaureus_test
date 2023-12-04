part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required Option<Either<ApiResponseFailures, Unit>> cartOption,
    required Map<String, Cart> cartItems,
    required Option<Either<ApiResponseFailures, Unit>> orderOption,
  }) = _CartState;

  factory CartState.initial() {
    return CartState(
      cartOption: none(),
      cartItems: {},
      orderOption: none(),
    );
  }
}
