import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/domain/repositories/i_customer_repository.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class GetCustomer {
  Future<Either<ApiResponseFailures, List<Customer>>> viewAllCustomers();
  Future<Either<ApiResponseFailures, List<Customer>>> searchCustomers(
      String customerName);
  Future<Either<ApiResponseFailures, Unit>> addCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> editCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(String customerId);
}

@LazySingleton(as: GetCustomer)
class GetCustomerImpl extends GetCustomer {
  GetCustomerImpl(this._iCustomerRepository);

  final ICustomerRepository _iCustomerRepository;

  @override
  Future<Either<ApiResponseFailures, List<Customer>>> viewAllCustomers() {
    return _iCustomerRepository.viewAllCustomers();
  }

  @override
  Future<Either<ApiResponseFailures, List<Customer>>> searchCustomers(
      String customerName) {
    return _iCustomerRepository.searchCustomers(customerName);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> addCustomer(Customer customer) {
    return _iCustomerRepository.addCustomer(customer);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> editCustomer(Customer customer) {
    return _iCustomerRepository.editCustomer(customer);
  }

  @override
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(String customerId) {
    return _iCustomerRepository.chooseCustomer(customerId);
  }
}
