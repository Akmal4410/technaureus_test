import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:technaureus/data/mappers/customer_mapper.dart';
import 'package:technaureus/data/models/customer/customer_model.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/utils/app_constants.dart';
import 'package:technaureus/utils/configure_hive_db.dart';
import 'package:technaureus/utils/network_service/domain/i_network_facade.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';
import 'package:technaureus/utils/network_service/network_helper.dart';
import 'package:injectable/injectable.dart';

abstract class CustomerDatasource {
  Future<Either<ApiResponseFailures, List<CustomerModel>>> viewAllCustomers();
  Future<Either<ApiResponseFailures, List<CustomerModel>>> searchCustomers(
      String customerName);
  Future<Either<ApiResponseFailures, Unit>> addCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> editCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(String customerId);
}

@named
@LazySingleton(as: CustomerDatasource)
class RemoteCustomerDatasource extends CustomerDatasource {
  final INetworkFacade _iNetworkFacade;
  RemoteCustomerDatasource(this._iNetworkFacade);

  @override
  Future<Either<ApiResponseFailures, List<CustomerModel>>>
      viewAllCustomers() async {
    debugPrint("RemoteCustomerDatasource");

    final response = await _iNetworkFacade.getRequest('customers');

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          final jsonData = apiResponse.data as List<dynamic>;
          final customerList = jsonData
              .map((product) => CustomerModel.fromJson(product))
              .toList();
          await addAllCustomersToDb(customerList);
          return right(customerList);
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

  Future<void> addAllCustomersToDb(List<CustomerModel> customerList) async {
    try {
      final customerBox = MyLocalDB.getCustomerBoxDB();
      await customerBox.clear();
      for (var customer in customerList) {
        final cutomerDB =
            CustomerMapper.fromCustomerModelToCustomerDB(customer);
        await customerBox.put(customer.id, cutomerDB);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<Either<ApiResponseFailures, List<CustomerModel>>> searchCustomers(
      String customerName) async {
    final response = await _iNetworkFacade.getRequest(
      'customers',
      query: {"search_query": customerName},
    );

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          final jsonData = apiResponse.data as List<dynamic>;
          final customerList = jsonData
              .map((product) => CustomerModel.fromJson(product))
              .toList();
          return right(customerList);
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
  Future<Either<ApiResponseFailures, Unit>> addCustomer(
    Customer customer,
  ) async {
    final response = await _iNetworkFacade.postRequest(
      'customers/',
      body: customer.toJson(),
    );

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          debugPrint(apiResponse.data.toString());
          return right(unit);
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
  Future<Either<ApiResponseFailures, Unit>> editCustomer(
      Customer customer) async {
    final response = await _iNetworkFacade.putRequest(
      'customers/',
      query: {"id": customer.id},
      body: customer.toJson(),
    );

    return response.fold(
      (failure) => left(NetworkHelper.getFailureValue(failure)),
      (apiResponse) async {
        if (apiResponse.errorCode == 0) {
          debugPrint(apiResponse.data.toString());
          return right(unit);
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
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(String customerId) {
    throw UnimplementedError();
  }
}

@named
@LazySingleton(as: CustomerDatasource)
class LocalCustomerDatasource extends CustomerDatasource {
  @override
  Future<Either<ApiResponseFailures, List<CustomerModel>>>
      viewAllCustomers() async {
    debugPrint("LocalCustomerDatasource");
    try {
      final customerBox = MyLocalDB.getCustomerBoxDB();
      final customers = customerBox.values.map((customerDB) {
        return CustomerMapper.fromCustomerDBToCustomerModel(customerDB);
      }).toList();
      return right(customers);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, List<CustomerModel>>> searchCustomers(
      String customerName) async {
    try {
      final customerBox = MyLocalDB.getCustomerBoxDB();
      final customers = customerBox.values.map((customerDB) {
        return CustomerMapper.fromCustomerDBToCustomerModel(customerDB);
      }).toList();

      final searchedCustomers = customers
          .where((customer) =>
              customer.name.toLowerCase().contains(customerName.toLowerCase()))
          .toList();
      return right(searchedCustomers);
    } catch (e) {
      debugPrint(e.toString());
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addCustomer(Customer customer) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> editCustomer(Customer customer) {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(
      String customerId) async {
    try {
      final selectedCustomerBox = MyLocalDB.getSelectedCustomerBoxDB();
      await selectedCustomerBox.put(HiveDB.cutomerId, customerId);
      final id = selectedCustomerBox.get(HiveDB.cutomerId);
      debugPrint("$id saved id");
      return right(unit);
    } catch (e) {
      return left(const ApiResponseFailures.somethingWentWrong());
    }
  }
}
