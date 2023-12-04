import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';
import 'package:technaureus/utils/app_constants.dart';
import 'package:technaureus/utils/network_service/domain/api_response.dart';
import 'package:technaureus/utils/network_service/domain/i_network_facade.dart';
import 'package:technaureus/utils/network_service/failures/api_response_failures.dart';
import 'package:technaureus/utils/network_service/network_helper.dart';
import 'package:technaureus/utils/network_service/network_intercepter.dart';

@LazySingleton(as: INetworkFacade)
class NetworkFacade extends INetworkFacade {
  late Dio _dio;

  NetworkFacade() {
    _dio = Dio();
    _dio.options.baseUrl = AppConstants.baseUrl;
    _dio.options.headers = setHeaders();
    _dio.options.connectTimeout = const Duration(seconds: 6); // 6 seconds
    _dio.options.receiveTimeout = const Duration(seconds: 6); // 6 seconds
    _dio.interceptors.add(NetwrokInterceptor());
  }
  //------------------------------------------- GET REQUEST -----------------------------------
  @override
  Future<Either<ApiResponseFailures, ApiResponse>> getRequest(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
  }) async {
    return retry(
      () async {
        late Response response;
        try {
          response = await _dio
              .get(
            uri,
            queryParameters: query,
            options: Options(headers: headers),
          )
              .timeout(
            Duration(seconds: _dio.options.connectTimeout?.inSeconds ?? 5),
            onTimeout: () {
              return Response(
                requestOptions: RequestOptions(),
                statusCode: 408,
                statusMessage: 'Timeout Error!!',
              );
            },
          );
          if (response.statusCode == 200) {
            final apiResponse = ApiResponse.fromJson(response.data);
            return right(apiResponse);
          } else if (response.statusCode == 400) {
            return left(const ApiResponseFailures.clientError());
          } else if (response.statusCode == 500) {
            return left(const ApiResponseFailures.serverError());
          } else {
            return left(const ApiResponseFailures.somethingWentWrong());
          }
        } on DioException catch (e) {
          return left(NetworkHelper.checkForNetworkExceptions(e));
        }
      },
      retryIf: (e) => e is SocketException,
      maxAttempts: 3,
    );
  }

  //------------------------------------------- POST REQUEST -----------------------------------

  @override
  Future<Either<ApiResponseFailures, ApiResponse>> postRequest(
    String uri, {
    Map<String, dynamic>? headers,
    dynamic body,
  }) async {
    late Response response;
    try {
      response = await _dio
          .post(uri, data: body, options: Options(headers: headers))
          .timeout(
        Duration(seconds: _dio.options.connectTimeout?.inSeconds ?? 5),
        onTimeout: () {
          return Response(
            requestOptions: RequestOptions(),
            statusCode: 408,
            statusMessage: 'Timeout Error!!',
          );
        },
      );
      if (response.statusCode == 200) {
        final apiResponse = ApiResponse.fromJson(response.data);
        return right(apiResponse);
      } else if (response.statusCode == 400) {
        return left(const ApiResponseFailures.clientError());
      } else if (response.statusCode == 500) {
        return left(const ApiResponseFailures.serverError());
      } else {
        return left(const ApiResponseFailures.somethingWentWrong());
      }
    } on DioException catch (e) {
      debugPrint(e.toString());
      return left(NetworkHelper.checkForNetworkExceptions(e));
    }
  }

  //------------------------------------------- PUT REQUEST -----------------------------------

  @override
  Future<Either<ApiResponseFailures, ApiResponse>> putRequest(
    String uri, {
    Map<String, dynamic>? headers,
    Map<String, dynamic>? query,
    dynamic body,
  }) async {
    late Response response;
    try {
      response = await _dio.put(
        uri,
        data: body,
        queryParameters: query,
        options: Options(headers: headers),
      );

      if (response.statusCode == 200) {
        final apiResponse = ApiResponse.fromJson(response.data);
        return right(apiResponse);
      } else if (response.statusCode == 400) {
        return left(const ApiResponseFailures.clientError());
      } else if (response.statusCode == 500) {
        return left(const ApiResponseFailures.serverError());
      } else {
        return left(const ApiResponseFailures.somethingWentWrong());
      }
    } on DioException catch (e) {
      return left(NetworkHelper.checkForNetworkExceptions(e));
    }
  }

  static setHeaders() => {
        "Accept": "*/*",
        "Content-Type": "application/json",
      };
}
