import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/repositories/i_product_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class GetProduct {
  Future<Either<ApiResponseFailures, List<Product>>> viewAllProducts();
  Future<Either<ApiResponseFailures, List<Product>>> searchProducts(
      String productName);
}

@LazySingleton(as: GetProduct)
class GetProductImpl extends GetProduct {
  GetProductImpl(this._iProductRepository);

  final IProductRepository _iProductRepository;

  @override
  Future<Either<ApiResponseFailures, List<Product>>> viewAllProducts() {
    return _iProductRepository.viewAllProducts();
  }

  @override
  Future<Either<ApiResponseFailures, List<Product>>> searchProducts(
      String productName) {
    return _iProductRepository.searchProducts(productName);
  }
}
