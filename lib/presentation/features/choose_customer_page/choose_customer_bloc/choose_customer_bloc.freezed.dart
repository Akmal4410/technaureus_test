// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChooseCustomerEvent {
  String get customerId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) chooseCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? chooseCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? chooseCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChooseCustomer value) chooseCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChooseCustomer value)? chooseCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChooseCustomer value)? chooseCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseCustomerEventCopyWith<ChooseCustomerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseCustomerEventCopyWith<$Res> {
  factory $ChooseCustomerEventCopyWith(
          ChooseCustomerEvent value, $Res Function(ChooseCustomerEvent) then) =
      _$ChooseCustomerEventCopyWithImpl<$Res, ChooseCustomerEvent>;
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class _$ChooseCustomerEventCopyWithImpl<$Res, $Val extends ChooseCustomerEvent>
    implements $ChooseCustomerEventCopyWith<$Res> {
  _$ChooseCustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_value.copyWith(
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseCustomerImplCopyWith<$Res>
    implements $ChooseCustomerEventCopyWith<$Res> {
  factory _$$ChooseCustomerImplCopyWith(_$ChooseCustomerImpl value,
          $Res Function(_$ChooseCustomerImpl) then) =
      __$$ChooseCustomerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String customerId});
}

/// @nodoc
class __$$ChooseCustomerImplCopyWithImpl<$Res>
    extends _$ChooseCustomerEventCopyWithImpl<$Res, _$ChooseCustomerImpl>
    implements _$$ChooseCustomerImplCopyWith<$Res> {
  __$$ChooseCustomerImplCopyWithImpl(
      _$ChooseCustomerImpl _value, $Res Function(_$ChooseCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerId = null,
  }) {
    return _then(_$ChooseCustomerImpl(
      null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChooseCustomerImpl implements _ChooseCustomer {
  const _$ChooseCustomerImpl(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'ChooseCustomerEvent.chooseCustomer(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseCustomerImpl &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseCustomerImplCopyWith<_$ChooseCustomerImpl> get copyWith =>
      __$$ChooseCustomerImplCopyWithImpl<_$ChooseCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) chooseCustomer,
  }) {
    return chooseCustomer(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String customerId)? chooseCustomer,
  }) {
    return chooseCustomer?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? chooseCustomer,
    required TResult orElse(),
  }) {
    if (chooseCustomer != null) {
      return chooseCustomer(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChooseCustomer value) chooseCustomer,
  }) {
    return chooseCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChooseCustomer value)? chooseCustomer,
  }) {
    return chooseCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChooseCustomer value)? chooseCustomer,
    required TResult orElse(),
  }) {
    if (chooseCustomer != null) {
      return chooseCustomer(this);
    }
    return orElse();
  }
}

abstract class _ChooseCustomer implements ChooseCustomerEvent {
  const factory _ChooseCustomer(final String customerId) = _$ChooseCustomerImpl;

  @override
  String get customerId;
  @override
  @JsonKey(ignore: true)
  _$$ChooseCustomerImplCopyWith<_$ChooseCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChooseCustomerState {
  Option<Either<ApiResponseFailures, Unit>> get chooseCustomerOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChooseCustomerStateCopyWith<ChooseCustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseCustomerStateCopyWith<$Res> {
  factory $ChooseCustomerStateCopyWith(
          ChooseCustomerState value, $Res Function(ChooseCustomerState) then) =
      _$ChooseCustomerStateCopyWithImpl<$Res, ChooseCustomerState>;
  @useResult
  $Res call({Option<Either<ApiResponseFailures, Unit>> chooseCustomerOption});
}

/// @nodoc
class _$ChooseCustomerStateCopyWithImpl<$Res, $Val extends ChooseCustomerState>
    implements $ChooseCustomerStateCopyWith<$Res> {
  _$ChooseCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseCustomerOption = null,
  }) {
    return _then(_value.copyWith(
      chooseCustomerOption: null == chooseCustomerOption
          ? _value.chooseCustomerOption
          : chooseCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseCustomerStateImplCopyWith<$Res>
    implements $ChooseCustomerStateCopyWith<$Res> {
  factory _$$ChooseCustomerStateImplCopyWith(_$ChooseCustomerStateImpl value,
          $Res Function(_$ChooseCustomerStateImpl) then) =
      __$$ChooseCustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Option<Either<ApiResponseFailures, Unit>> chooseCustomerOption});
}

/// @nodoc
class __$$ChooseCustomerStateImplCopyWithImpl<$Res>
    extends _$ChooseCustomerStateCopyWithImpl<$Res, _$ChooseCustomerStateImpl>
    implements _$$ChooseCustomerStateImplCopyWith<$Res> {
  __$$ChooseCustomerStateImplCopyWithImpl(_$ChooseCustomerStateImpl _value,
      $Res Function(_$ChooseCustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseCustomerOption = null,
  }) {
    return _then(_$ChooseCustomerStateImpl(
      chooseCustomerOption: null == chooseCustomerOption
          ? _value.chooseCustomerOption
          : chooseCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$ChooseCustomerStateImpl implements _ChooseCustomerState {
  const _$ChooseCustomerStateImpl({required this.chooseCustomerOption});

  @override
  final Option<Either<ApiResponseFailures, Unit>> chooseCustomerOption;

  @override
  String toString() {
    return 'ChooseCustomerState(chooseCustomerOption: $chooseCustomerOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseCustomerStateImpl &&
            (identical(other.chooseCustomerOption, chooseCustomerOption) ||
                other.chooseCustomerOption == chooseCustomerOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chooseCustomerOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseCustomerStateImplCopyWith<_$ChooseCustomerStateImpl> get copyWith =>
      __$$ChooseCustomerStateImplCopyWithImpl<_$ChooseCustomerStateImpl>(
          this, _$identity);
}

abstract class _ChooseCustomerState implements ChooseCustomerState {
  const factory _ChooseCustomerState(
      {required final Option<Either<ApiResponseFailures, Unit>>
          chooseCustomerOption}) = _$ChooseCustomerStateImpl;

  @override
  Option<Either<ApiResponseFailures, Unit>> get chooseCustomerOption;
  @override
  @JsonKey(ignore: true)
  _$$ChooseCustomerStateImplCopyWith<_$ChooseCustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
