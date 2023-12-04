import 'package:technaureus/data/models/product/product_db.dart';
import 'package:technaureus/data/models/product/product_model.dart';
import 'package:technaureus/domain/entities/product.dart';

class ProductMapper {
  static Product fromProductModelToProduct(ProductModel product) {
    return Product(
      id: product.id,
      name: product.name,
      image: product.image,
      price: product.price,
    );
  }

  static ProductDB fromProductModelToProductDB(ProductModel product) {
    return ProductDB(
      id: product.id,
      name: product.name,
      image: product.image,
      price: product.price,
      createdDate: product.createdDate,
      createdTime: product.createdTime,
      modifiedDate: product.modifiedDate,
      modifiedTime: product.modifiedTime,
      flag: product.flag,
    );
  }

  static ProductModel fromProductDBToProductModel(ProductDB product) {
    return ProductModel(
      id: product.id,
      name: product.name,
      image: product.image,
      price: product.price,
      createdDate: product.createdDate,
      createdTime: product.createdTime,
      modifiedDate: product.modifiedDate,
      modifiedTime: product.modifiedTime,
      flag: product.flag,
    );
  }
}
