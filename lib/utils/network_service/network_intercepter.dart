import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetwrokInterceptor extends QueuedInterceptor {
  NetwrokInterceptor();
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    debugPrint("==========API Call Start============");
    debugPrint("option uri : ${options.uri}");
    debugPrint("option header  : ${options.headers}");
    debugPrint("option body  : ${options.data}");

    return handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    debugPrint("==========API Call END============");
    debugPrint("response header  : ${response.headers}");
    debugPrint("response body  : ${response.data}");

    return handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    return handler.next(err);
  }
}
