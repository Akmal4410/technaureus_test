import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:technaureus/data/datasources/customer_datasource.dart';
import 'package:technaureus/data/mappers/customer_mapper.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/domain/repositories/i_customer_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

@LazySingleton(as: ICustomerRepository)
class CustomerRepositoryImpl extends ICustomerRepository {
  final CustomerDatasource _remoteDataSource;
  final CustomerDatasource _localDataSource;
  final InternetConnectionChecker _internetConnectionChecker;

  CustomerRepositoryImpl(
    @Named.from(RemoteCustomerDatasource) this._remoteDataSource,
    @Named.from(LocalCustomerDatasource) this._localDataSource,
    this._internetConnectionChecker,
  );
  @override
  Future<Either<ApiResponseFailures, List<Customer>>> viewAllCustomers() async {
    var connectivityResult = await _internetConnectionChecker.hasConnection;
    if (connectivityResult) {
      debugPrint("_remoteDataSource");
      final respose = await _remoteDataSource.viewAllCustomers();
      return respose.fold((failure) => left(failure), (success) {
        final customers = success
            .map((customer) =>
                CustomerMapper.fromCustomerModelToCustomer(customer))
            .toList();
        return right(customers);
      });
    } else {
      debugPrint("_localDataSource");
      final respose = await _localDataSource.viewAllCustomers();
      return respose.fold((failure) => left(failure), (success) {
        final customers = success
            .map((customer) =>
                CustomerMapper.fromCustomerModelToCustomer(customer))
            .toList();
        return right(customers);
      });
    }
  }

  @override
  Future<Either<ApiResponseFailures, List<Customer>>> searchCustomers(
      String customerName) async {
    var connectivityResult = await _internetConnectionChecker.hasConnection;
    if (connectivityResult) {
      debugPrint("_remoteDataSource");
      final respose = await _remoteDataSource.searchCustomers(customerName);
      return respose.fold((failure) => left(failure), (success) {
        final customers = success
            .map((customer) =>
                CustomerMapper.fromCustomerModelToCustomer(customer))
            .toList();
        return right(customers);
      });
    } else {
      debugPrint("_localDataSource");
      final respose = await _localDataSource.searchCustomers(customerName);
      return respose.fold((failure) => left(failure), (success) {
        final customers = success
            .map((customer) =>
                CustomerMapper.fromCustomerModelToCustomer(customer))
            .toList();
        return right(customers);
      });
    }
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addCustomer(
      Customer customer) async {
    final response = await _remoteDataSource.addCustomer(customer);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> editCustomer(
      Customer customer) async {
    final response = await _remoteDataSource.editCustomer(customer);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(
      String customerId) async {
    final response = await _localDataSource.chooseCustomer(customerId);
    return response.fold(
      (failure) => left(failure),
      (success) => right(success),
    );
  }
}
