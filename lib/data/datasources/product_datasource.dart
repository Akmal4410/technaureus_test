import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:technaureus/data/mappers/product_mapper.dart';
import 'package:technaureus/data/models/product/product_model.dart';
import 'package:technaureus/utils/configure_hive_db.dart';
import 'package:technaureus/utils/network_service/domain/i_network_facade.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';
import 'package:technaureus/utils/network_service/network_helper.dart';
import 'package:injectable/injectable.dart';

abstract class ProductDatasource {
  Future<Either<ApiResponseFailures, List<ProductModel>>> viewAllProducts();
  Future<Either<ApiResponseFailures, List<ProductModel>>> searchProducts(
      String productName);
}

@named
@LazySingleton(as: ProductDatasource)
class RemoteProductDatasource extends ProductDatasource {
  final INetworkFacade _iNetworkFacade;
  RemoteProductDatasource(this._iNetworkFacade);

  @override
  Future<Either<ApiResponseFailures, List<ProductModel>>>
      viewAllProducts() async {
    debugPrint("RemoteProductDatasource");

    final response = await _iNetworkFacade.getRequest('products');

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          final jsonData = apiResponse.data as List<dynamic>;
          final productList = jsonData
              .map((product) => ProductModel.fromJson(product))
              .toList();
          await addAllProductsToDB(productList);
          return right(productList);
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
  Future<Either<ApiResponseFailures, List<ProductModel>>> searchProducts(
      String productName) async {
    final response = await _iNetworkFacade.getRequest(
      'products',
      query: {"search_query": productName},
    );

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          final jsonData = apiResponse.data as List<dynamic>;
          final productList = jsonData
              .map((product) => ProductModel.fromJson(product))
              .toList();
          return right(productList);
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

  Future<void> addAllProductsToDB(List<ProductModel> productList) async {
    try {
      final productBox = MyLocalDB.getProductBoxDB();
      await productBox.clear();
      for (var product in productList) {
        final productDB = ProductMapper.fromProductModelToProductDB(product);
        await productBox.put(product.id, productDB);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

@named
@LazySingleton(as: ProductDatasource)
class LocalProductDatasource extends ProductDatasource {
  @override
  Future<Either<ApiResponseFailures, List<ProductModel>>>
      viewAllProducts() async {
    debugPrint("LocalProductDatasource");
    try {
      final productBox = MyLocalDB.getProductBoxDB();
      final products = productBox.values.map((productDB) {
        return ProductMapper.fromProductDBToProductModel(productDB);
      }).toList();
      return right(products);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, List<ProductModel>>> searchProducts(
      String productName) async {
    try {
      final productBox = MyLocalDB.getProductBoxDB();
      final products = productBox.values.map((productDB) {
        return ProductMapper.fromProductDBToProductModel(productDB);
      }).toList();

      final searchedProducts = products
          .where((product) =>
              product.name.toLowerCase().contains(productName.toLowerCase()))
          .toList();

      return right(searchedProducts);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }
}
