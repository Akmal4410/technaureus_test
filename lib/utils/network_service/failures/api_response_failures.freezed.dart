// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponseFailures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseFailuresCopyWith<$Res> {
  factory $ApiResponseFailuresCopyWith(
          ApiResponseFailures value, $Res Function(ApiResponseFailures) then) =
      _$ApiResponseFailuresCopyWithImpl<$Res, ApiResponseFailures>;
}

/// @nodoc
class _$ApiResponseFailuresCopyWithImpl<$Res, $Val extends ApiResponseFailures>
    implements $ApiResponseFailuresCopyWith<$Res> {
  _$ApiResponseFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorImplCopyWith<$Res> {
  factory _$$ServerErrorImplCopyWith(
          _$ServerErrorImpl value, $Res Function(_$ServerErrorImpl) then) =
      __$$ServerErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorImplCopyWithImpl<$Res>
    extends _$ApiResponseFailuresCopyWithImpl<$Res, _$ServerErrorImpl>
    implements _$$ServerErrorImplCopyWith<$Res> {
  __$$ServerErrorImplCopyWithImpl(
      _$ServerErrorImpl _value, $Res Function(_$ServerErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerErrorImpl implements ServerError {
  const _$ServerErrorImpl();

  @override
  String toString() {
    return 'ApiResponseFailures.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ApiResponseFailures {
  const factory ServerError() = _$ServerErrorImpl;
}

/// @nodoc
abstract class _$$ClientErrorImplCopyWith<$Res> {
  factory _$$ClientErrorImplCopyWith(
          _$ClientErrorImpl value, $Res Function(_$ClientErrorImpl) then) =
      __$$ClientErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientErrorImplCopyWithImpl<$Res>
    extends _$ApiResponseFailuresCopyWithImpl<$Res, _$ClientErrorImpl>
    implements _$$ClientErrorImplCopyWith<$Res> {
  __$$ClientErrorImplCopyWithImpl(
      _$ClientErrorImpl _value, $Res Function(_$ClientErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientErrorImpl implements ClientError {
  const _$ClientErrorImpl();

  @override
  String toString() {
    return 'ApiResponseFailures.clientError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) {
    return clientError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) {
    return clientError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) {
    return clientError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) {
    return clientError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (clientError != null) {
      return clientError(this);
    }
    return orElse();
  }
}

abstract class ClientError implements ApiResponseFailures {
  const factory ClientError() = _$ClientErrorImpl;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<$Res> {
  factory _$$ApiResponseErrorImplCopyWith(_$ApiResponseErrorImpl value,
          $Res Function(_$ApiResponseErrorImpl) then) =
      __$$ApiResponseErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<$Res>
    extends _$ApiResponseFailuresCopyWithImpl<$Res, _$ApiResponseErrorImpl>
    implements _$$ApiResponseErrorImplCopyWith<$Res> {
  __$$ApiResponseErrorImplCopyWithImpl(_$ApiResponseErrorImpl _value,
      $Res Function(_$ApiResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ApiResponseErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApiResponseErrorImpl implements ApiResponseError {
  const _$ApiResponseErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiResponseFailures.apiResponseError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<_$ApiResponseErrorImpl> get copyWith =>
      __$$ApiResponseErrorImplCopyWithImpl<_$ApiResponseErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) {
    return apiResponseError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) {
    return apiResponseError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (apiResponseError != null) {
      return apiResponseError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) {
    return apiResponseError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) {
    return apiResponseError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (apiResponseError != null) {
      return apiResponseError(this);
    }
    return orElse();
  }
}

abstract class ApiResponseError implements ApiResponseFailures {
  const factory ApiResponseError({required final String message}) =
      _$ApiResponseErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ApiResponseErrorImplCopyWith<_$ApiResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SomethingWentWrongImplCopyWith<$Res> {
  factory _$$SomethingWentWrongImplCopyWith(_$SomethingWentWrongImpl value,
          $Res Function(_$SomethingWentWrongImpl) then) =
      __$$SomethingWentWrongImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SomethingWentWrongImplCopyWithImpl<$Res>
    extends _$ApiResponseFailuresCopyWithImpl<$Res, _$SomethingWentWrongImpl>
    implements _$$SomethingWentWrongImplCopyWith<$Res> {
  __$$SomethingWentWrongImplCopyWithImpl(_$SomethingWentWrongImpl _value,
      $Res Function(_$SomethingWentWrongImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SomethingWentWrongImpl implements SomethingWentWrong {
  const _$SomethingWentWrongImpl();

  @override
  String toString() {
    return 'ApiResponseFailures.somethingWentWrong()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SomethingWentWrongImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) {
    return somethingWentWrong();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) {
    return somethingWentWrong?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) {
    return somethingWentWrong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) {
    return somethingWentWrong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (somethingWentWrong != null) {
      return somethingWentWrong(this);
    }
    return orElse();
  }
}

abstract class SomethingWentWrong implements ApiResponseFailures {
  const factory SomethingWentWrong() = _$SomethingWentWrongImpl;
}

/// @nodoc
abstract class _$$NetworkErrorImplCopyWith<$Res> {
  factory _$$NetworkErrorImplCopyWith(
          _$NetworkErrorImpl value, $Res Function(_$NetworkErrorImpl) then) =
      __$$NetworkErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NetworkErrorImplCopyWithImpl<$Res>
    extends _$ApiResponseFailuresCopyWithImpl<$Res, _$NetworkErrorImpl>
    implements _$$NetworkErrorImplCopyWith<$Res> {
  __$$NetworkErrorImplCopyWithImpl(
      _$NetworkErrorImpl _value, $Res Function(_$NetworkErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NetworkErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NetworkErrorImpl implements NetworkError {
  const _$NetworkErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiResponseFailures.networkError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      __$$NetworkErrorImplCopyWithImpl<_$NetworkErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() clientError,
    required TResult Function(String message) apiResponseError,
    required TResult Function() somethingWentWrong,
    required TResult Function(String message) networkError,
  }) {
    return networkError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? clientError,
    TResult? Function(String message)? apiResponseError,
    TResult? Function()? somethingWentWrong,
    TResult? Function(String message)? networkError,
  }) {
    return networkError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? clientError,
    TResult Function(String message)? apiResponseError,
    TResult Function()? somethingWentWrong,
    TResult Function(String message)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(ClientError value) clientError,
    required TResult Function(ApiResponseError value) apiResponseError,
    required TResult Function(SomethingWentWrong value) somethingWentWrong,
    required TResult Function(NetworkError value) networkError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(ClientError value)? clientError,
    TResult? Function(ApiResponseError value)? apiResponseError,
    TResult? Function(SomethingWentWrong value)? somethingWentWrong,
    TResult? Function(NetworkError value)? networkError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(ClientError value)? clientError,
    TResult Function(ApiResponseError value)? apiResponseError,
    TResult Function(SomethingWentWrong value)? somethingWentWrong,
    TResult Function(NetworkError value)? networkError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class NetworkError implements ApiResponseFailures {
  const factory NetworkError({required final String message}) =
      _$NetworkErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$NetworkErrorImplCopyWith<_$NetworkErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
