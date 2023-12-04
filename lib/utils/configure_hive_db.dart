import 'package:hive_flutter/hive_flutter.dart';
import 'package:technaureus/data/models/cart/cart_db.dart';
import 'package:technaureus/data/models/customer/customer_db.dart';
import 'package:technaureus/data/models/product/product_db.dart';
import 'package:technaureus/utils/app_constants.dart';

class MyLocalDB {
  static Future<void> configureHiveDB() async {
    await Hive.initFlutter();
    if (!Hive.isAdapterRegistered(0)) {
      Hive.registerAdapter(ProductDBAdapter());
    }
    if (!Hive.isAdapterRegistered(1)) {
      Hive.registerAdapter(CustomerDBAdapter());
    }
    if (!Hive.isAdapterRegistered(2)) {
      Hive.registerAdapter(CartDBAdapter());
    }

    await Hive.openBox<ProductDB>(HiveDB.productDB);
    await Hive.openBox<CustomerDB>(HiveDB.customerDB);
    await Hive.openBox<String>(HiveDB.selectedCutomerDB);
    await Hive.openBox<CartDB>(HiveDB.cartDB);
  }

  static Box<ProductDB> getProductBoxDB() {
    return Hive.box<ProductDB>(HiveDB.productDB);
  }

  static Box<CustomerDB> getCustomerBoxDB() {
    return Hive.box<CustomerDB>(HiveDB.customerDB);
  }

  static Box<String> getSelectedCustomerBoxDB() {
    return Hive.box<String>(HiveDB.selectedCutomerDB);
  }

  static Box<CartDB> getCartBoxDB() {
    return Hive.box<CartDB>(HiveDB.cartDB);
  }
}
