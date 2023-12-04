import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_response_failures.freezed.dart';

@freezed
class ApiResponseFailures with _$ApiResponseFailures {
  const factory ApiResponseFailures.serverError() = ServerError;
  const factory ApiResponseFailures.clientError() = ClientError;
  const factory ApiResponseFailures.apiResponseError({
    required String message,
  }) = ApiResponseError;
  const factory ApiResponseFailures.somethingWentWrong() = SomethingWentWrong;

  const factory ApiResponseFailures.networkError({required String message}) =
      NetworkError;
}
