part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.viewAllProducts() = _ViewAllProducts;
  const factory ProductEvent.searchProducts(String productName) =
      _SearchProducts;
}
