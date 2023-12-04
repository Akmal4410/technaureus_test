import 'package:dartz/dartz.dart';
import 'package:technaureus/domain/entities/customer.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class ICustomerRepository {
  Future<Either<ApiResponseFailures, List<Customer>>> viewAllCustomers();
  Future<Either<ApiResponseFailures, List<Customer>>> searchCustomers(
      String customerName);
  Future<Either<ApiResponseFailures, Unit>> addCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> editCustomer(Customer customer);
  Future<Either<ApiResponseFailures, Unit>> chooseCustomer(String customerId);
}
