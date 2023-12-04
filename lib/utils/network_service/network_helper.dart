import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';

class NetworkHelper {
  static ApiResponseFailures checkForNetworkExceptions(DioException error) {
    if (error.type == DioExceptionType.connectionError) {
      return const ApiResponseFailures.networkError(
        message: 'Please check your Internet connection.',
      );
    }
    if (error.type == DioExceptionType.connectionTimeout) {
      return const ApiResponseFailures.networkError(
        message: 'Connection Timeout',
      );
    }
    if (error.type == DioExceptionType.receiveTimeout) {
      return const ApiResponseFailures.networkError(
        message: 'Receive Timeout',
      );
    }
    final response = error.response;
    log(error.type.toString());
    log("${response?.statusCode}----IN NETWORK HELPER");
    if (response != null) {
      final statusCode = response.statusCode!;

      if (statusCode == 406) {
        return const ApiResponseFailures.clientError();
      } else if (statusCode == 503) {
        return const ApiResponseFailures.serverError();
      } else if (statusCode == 401) {
        return const ApiResponseFailures.clientError();
      }
    } else {
      return const ApiResponseFailures.somethingWentWrong();
    }
    return const ApiResponseFailures.somethingWentWrong();
  }

  static ApiResponseFailures getFailureValue(ApiResponseFailures failure) {
    return failure.map(
      serverError: (value) => const ApiResponseFailures.serverError(),
      clientError: (value) => const ApiResponseFailures.clientError(),
      networkError: (value) =>
          ApiResponseFailures.networkError(message: value.message),
      apiResponseError: (value) =>
          ApiResponseFailures.networkError(message: value.message),
      somethingWentWrong: (value) => const ApiResponseFailures.apiResponseError(
          message: "Something went wrong"),
    );
  }
}
