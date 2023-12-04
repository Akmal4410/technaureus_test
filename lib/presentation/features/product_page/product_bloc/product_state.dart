part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required bool isLoading,
    required Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
    required List<Product> productList,
    required List<Product> searchList,
  }) = _ProductState;

  factory ProductState.initail() {
    return ProductState(
      isLoading: false,
      failureOrSuccessOption: none(),
      productList: [],
      searchList: [],
    );
  }
}
