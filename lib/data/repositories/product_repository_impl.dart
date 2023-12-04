import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:technaureus/data/datasources/product_datasource.dart';
import 'package:technaureus/data/mappers/product_mapper.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/domain/repositories/i_product_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

@LazySingleton(as: IProductRepository)
class ProductRepositoryImpl extends IProductRepository {
  final ProductDatasource _remoteDataSource;
  final ProductDatasource _localDataSource;
  final InternetConnectionChecker _internetConnectionChecker;

  ProductRepositoryImpl(
    @Named.from(RemoteProductDatasource) this._remoteDataSource,
    @Named.from(LocalProductDatasource) this._localDataSource,
    this._internetConnectionChecker,
  );

  @override
  Future<Either<ApiResponseFailures, List<Product>>> viewAllProducts() async {
    var connectivityResult = await _internetConnectionChecker.hasConnection;
    if (connectivityResult) {
      debugPrint("_remoteDataSource");
      final respose = await _remoteDataSource.viewAllProducts();

      return respose.fold((failure) => left(failure), (success) {
        final products = success
            .map((product) => ProductMapper.fromProductModelToProduct(product))
            .toList();
        return right(products);
      });
    } else {
      debugPrint("_localDataSource");
      final respose = await _localDataSource.viewAllProducts();
      return respose.fold((failure) => left(failure), (success) {
        final products = success
            .map((product) => ProductMapper.fromProductModelToProduct(product))
            .toList();
        return right(products);
      });
    }
  }

  @override
  Future<Either<ApiResponseFailures, List<Product>>> searchProducts(
      String productName) async {
    var connectivityResult = await _internetConnectionChecker.hasConnection;
    if (connectivityResult) {
      debugPrint("_remoteDataSource");
      final respose = await _remoteDataSource.searchProducts(productName);

      return respose.fold((failure) => left(failure), (success) {
        final products = success
            .map((product) => ProductMapper.fromProductModelToProduct(product))
            .toList();
        return right(products);
      });
    } else {
      debugPrint("_localDataSource");
      final respose = await _localDataSource.searchProducts(productName);

      return respose.fold((failure) => left(failure), (success) {
        final products = success
            .map((product) => ProductMapper.fromProductModelToProduct(product))
            .toList();
        return right(products);
      });
    }
  }
}
