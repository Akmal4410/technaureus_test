import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/usecases/get_cart.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final GetCart _getCart;
  CartBloc(this._getCart) : super(CartState.initial()) {
    on<_GetCartQuatities>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
          cartItems: state.cartItems,
        ),
      );
      final failureOrSuccess = await _getCart.getCartQuatities();

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
            cartItems: state.cartItems,
          ),
        ),
        (cartItems) => emit(
          state.copyWith(
            cartOption: some(right(unit)),
            cartItems: cartItems,
          ),
        ),
      );
    });

    on<_AddToCart>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
        ),
      );
      final failureOrSuccess = await _getCart.addToCart(event.product);

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
          ),
        ),
        (success) {
          add(const _GetCartQuatities());
          return emit(
            state.copyWith(
              cartOption: some(right(unit)),
            ),
          );
        },
      );
    });

    on<_RemoveFromCart>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
        ),
      );
      final failureOrSuccess =
          await _getCart.removeFromCart(event.productId.toString());

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
          ),
        ),
        (success) {
          add(const _GetCartQuatities());
          return emit(
            state.copyWith(
              cartOption: some(right(unit)),
            ),
          );
        },
      );
    });

    on<_IncrementCartCount>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
        ),
      );
      final failureOrSuccess =
          await _getCart.incrementCartCount(event.productId.toString());

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
          ),
        ),
        (success) {
          add(const _GetCartQuatities());
          return emit(
            state.copyWith(
              cartOption: some(right(unit)),
            ),
          );
        },
      );
    });

    on<_DecrementCartCount>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
        ),
      );
      final failureOrSuccess =
          await _getCart.decrementCartCount(event.productId.toString());

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
          ),
        ),
        (success) {
          add(const _GetCartQuatities());
          return emit(
            state.copyWith(
              cartOption: some(right(unit)),
            ),
          );
        },
      );
    });

    on<_ClearCart>((event, emit) async {
      emit(
        state.copyWith(
          cartOption: none(),
        ),
      );
      final failureOrSuccess = await _getCart.clearCart();

      failureOrSuccess.fold(
        (failure) => emit(
          state.copyWith(
            cartOption: some(left(failure)),
          ),
        ),
        (success) {
          add(const _GetCartQuatities());
          return emit(
            state.copyWith(
              cartOption: some(right(unit)),
              orderOption: none(),
            ),
          );
        },
      );
    });

    on<_CreateOrder>((event, emit) async {
      emit(
        state.copyWith(
          orderOption: none(),
        ),
      );

      final total = double.tryParse(event.total)?.toInt() ?? 0;
      final failureOrSuccess =
          await _getCart.createOrder(total, event.cartItems);

      failureOrSuccess.fold(
        (failure) {
          emit(state.copyWith(
            orderOption: some(left(failure)),
            cartOption: none(),
          ));
          emit(state.copyWith(
            orderOption: none(),
            cartOption: none(),
          ));
        },
        (success) {
          add(const _ClearCart());
          emit(
            state.copyWith(
              orderOption: some(right(unit)),
              cartItems: {},
            ),
          );

          emit(state.copyWith(
            orderOption: none(),
            cartOption: none(),
          ));
        },
      );
    });
  }
}
