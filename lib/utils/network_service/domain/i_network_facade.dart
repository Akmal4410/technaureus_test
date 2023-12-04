import 'package:dartz/dartz.dart';
import 'package:technaureus/utils/network_service/domain/api_response.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

abstract class INetworkFacade {
  Future<Either<ApiResponseFailures, ApiResponse>> getRequest(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic> query,
  });

  Future<Either<ApiResponseFailures, ApiResponse>> postRequest(
    String uri, {
    Map<String, dynamic>? headers,
    dynamic body,
  });

  Future<Either<ApiResponseFailures, ApiResponse>> putRequest(
    String uri, {
    Map<String, dynamic> headers,
    Map<String, dynamic>? query,
    dynamic body,
  });
}
