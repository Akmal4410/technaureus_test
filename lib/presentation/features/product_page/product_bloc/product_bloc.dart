import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/usecases/get_product.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProduct _getProduct;
  ProductBloc(this._getProduct) : super(ProductState.initail()) {
    on<_ViewAllProducts>((event, emit) async {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess = await _getProduct.viewAllProducts();
      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(left(failrue)),
          ),
        ),
        (productList) {
          emit(
            state.copyWith(
              isLoading: false,
              failureOrSuccessOption: some(right(unit)),
              productList: productList,
            ),
          );
        },
      );
    });

    on<_SearchProducts>((event, emit) async {
      emit(state.copyWith(
        failureOrSuccessOption: none(),
        isLoading: true,
      ));

      final failureOrSuccess =
          await _getProduct.searchProducts(event.productName);

      failureOrSuccess.fold(
        (failrue) => emit(
          state.copyWith(
            isLoading: false,
            failureOrSuccessOption: some(left(failrue)),
          ),
        ),
        (searchList) {
          emit(
            state.copyWith(
              isLoading: false,
              failureOrSuccessOption: some(right(unit)),
              searchList: searchList,
            ),
          );
        },
      );
    });
  }
}
