import 'package:dartz/dartz.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class IProductRepository {
  Future<Either<ApiResponseFailures, List<Product>>> viewAllProducts();
  Future<Either<ApiResponseFailures, List<Product>>> searchProducts(
      String productName);
}
