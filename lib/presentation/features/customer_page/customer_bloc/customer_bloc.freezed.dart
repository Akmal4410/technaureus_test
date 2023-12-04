// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllCustomers,
    required TResult Function(String customerName) searchCustomers,
    required TResult Function(Customer customer) addCustomer,
    required TResult Function(Customer customer) editCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllCustomers,
    TResult? Function(String customerName)? searchCustomers,
    TResult? Function(Customer customer)? addCustomer,
    TResult? Function(Customer customer)? editCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllCustomers,
    TResult Function(String customerName)? searchCustomers,
    TResult Function(Customer customer)? addCustomer,
    TResult Function(Customer customer)? editCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllCustomers value) viewAllCustomers,
    required TResult Function(_SearchCustomers value) searchCustomers,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult? Function(_SearchCustomers value)? searchCustomers,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult Function(_SearchCustomers value)? searchCustomers,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewAllCustomersImplCopyWith<$Res> {
  factory _$$ViewAllCustomersImplCopyWith(_$ViewAllCustomersImpl value,
          $Res Function(_$ViewAllCustomersImpl) then) =
      __$$ViewAllCustomersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewAllCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$ViewAllCustomersImpl>
    implements _$$ViewAllCustomersImplCopyWith<$Res> {
  __$$ViewAllCustomersImplCopyWithImpl(_$ViewAllCustomersImpl _value,
      $Res Function(_$ViewAllCustomersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewAllCustomersImpl implements _ViewAllCustomers {
  const _$ViewAllCustomersImpl();

  @override
  String toString() {
    return 'CustomerEvent.viewAllCustomers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewAllCustomersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllCustomers,
    required TResult Function(String customerName) searchCustomers,
    required TResult Function(Customer customer) addCustomer,
    required TResult Function(Customer customer) editCustomer,
  }) {
    return viewAllCustomers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllCustomers,
    TResult? Function(String customerName)? searchCustomers,
    TResult? Function(Customer customer)? addCustomer,
    TResult? Function(Customer customer)? editCustomer,
  }) {
    return viewAllCustomers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllCustomers,
    TResult Function(String customerName)? searchCustomers,
    TResult Function(Customer customer)? addCustomer,
    TResult Function(Customer customer)? editCustomer,
    required TResult orElse(),
  }) {
    if (viewAllCustomers != null) {
      return viewAllCustomers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllCustomers value) viewAllCustomers,
    required TResult Function(_SearchCustomers value) searchCustomers,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
  }) {
    return viewAllCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult? Function(_SearchCustomers value)? searchCustomers,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
  }) {
    return viewAllCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult Function(_SearchCustomers value)? searchCustomers,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    required TResult orElse(),
  }) {
    if (viewAllCustomers != null) {
      return viewAllCustomers(this);
    }
    return orElse();
  }
}

abstract class _ViewAllCustomers implements CustomerEvent {
  const factory _ViewAllCustomers() = _$ViewAllCustomersImpl;
}

/// @nodoc
abstract class _$$SearchCustomersImplCopyWith<$Res> {
  factory _$$SearchCustomersImplCopyWith(_$SearchCustomersImpl value,
          $Res Function(_$SearchCustomersImpl) then) =
      __$$SearchCustomersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerName});
}

/// @nodoc
class __$$SearchCustomersImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$SearchCustomersImpl>
    implements _$$SearchCustomersImplCopyWith<$Res> {
  __$$SearchCustomersImplCopyWithImpl(
      _$SearchCustomersImpl _value, $Res Function(_$SearchCustomersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerName = null,
  }) {
    return _then(_$SearchCustomersImpl(
      null == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCustomersImpl implements _SearchCustomers {
  const _$SearchCustomersImpl(this.customerName);

  @override
  final String customerName;

  @override
  String toString() {
    return 'CustomerEvent.searchCustomers(customerName: $customerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCustomersImpl &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCustomersImplCopyWith<_$SearchCustomersImpl> get copyWith =>
      __$$SearchCustomersImplCopyWithImpl<_$SearchCustomersImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllCustomers,
    required TResult Function(String customerName) searchCustomers,
    required TResult Function(Customer customer) addCustomer,
    required TResult Function(Customer customer) editCustomer,
  }) {
    return searchCustomers(customerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllCustomers,
    TResult? Function(String customerName)? searchCustomers,
    TResult? Function(Customer customer)? addCustomer,
    TResult? Function(Customer customer)? editCustomer,
  }) {
    return searchCustomers?.call(customerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllCustomers,
    TResult Function(String customerName)? searchCustomers,
    TResult Function(Customer customer)? addCustomer,
    TResult Function(Customer customer)? editCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomers != null) {
      return searchCustomers(customerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllCustomers value) viewAllCustomers,
    required TResult Function(_SearchCustomers value) searchCustomers,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
  }) {
    return searchCustomers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult? Function(_SearchCustomers value)? searchCustomers,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
  }) {
    return searchCustomers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult Function(_SearchCustomers value)? searchCustomers,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomers != null) {
      return searchCustomers(this);
    }
    return orElse();
  }
}

abstract class _SearchCustomers implements CustomerEvent {
  const factory _SearchCustomers(final String customerName) =
      _$SearchCustomersImpl;

  String get customerName;
  @JsonKey(ignore: true)
  _$$SearchCustomersImplCopyWith<_$SearchCustomersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCustomerImplCopyWith<$Res> {
  factory _$$AddCustomerImplCopyWith(
          _$AddCustomerImpl value, $Res Function(_$AddCustomerImpl) then) =
      __$$AddCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer customer});
}

/// @nodoc
class __$$AddCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$AddCustomerImpl>
    implements _$$AddCustomerImplCopyWith<$Res> {
  __$$AddCustomerImplCopyWithImpl(
      _$AddCustomerImpl _value, $Res Function(_$AddCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$AddCustomerImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$AddCustomerImpl implements _AddCustomer {
  const _$AddCustomerImpl(this.customer);

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerEvent.addCustomer(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCustomerImplCopyWith<_$AddCustomerImpl> get copyWith =>
      __$$AddCustomerImplCopyWithImpl<_$AddCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllCustomers,
    required TResult Function(String customerName) searchCustomers,
    required TResult Function(Customer customer) addCustomer,
    required TResult Function(Customer customer) editCustomer,
  }) {
    return addCustomer(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllCustomers,
    TResult? Function(String customerName)? searchCustomers,
    TResult? Function(Customer customer)? addCustomer,
    TResult? Function(Customer customer)? editCustomer,
  }) {
    return addCustomer?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllCustomers,
    TResult Function(String customerName)? searchCustomers,
    TResult Function(Customer customer)? addCustomer,
    TResult Function(Customer customer)? editCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllCustomers value) viewAllCustomers,
    required TResult Function(_SearchCustomers value) searchCustomers,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
  }) {
    return addCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult? Function(_SearchCustomers value)? searchCustomers,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
  }) {
    return addCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult Function(_SearchCustomers value)? searchCustomers,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    required TResult orElse(),
  }) {
    if (addCustomer != null) {
      return addCustomer(this);
    }
    return orElse();
  }
}

abstract class _AddCustomer implements CustomerEvent {
  const factory _AddCustomer(final Customer customer) = _$AddCustomerImpl;

  Customer get customer;
  @JsonKey(ignore: true)
  _$$AddCustomerImplCopyWith<_$AddCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditCustomerImplCopyWith<$Res> {
  factory _$$EditCustomerImplCopyWith(
          _$EditCustomerImpl value, $Res Function(_$EditCustomerImpl) then) =
      __$$EditCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Customer customer});
}

/// @nodoc
class __$$EditCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$EditCustomerImpl>
    implements _$$EditCustomerImplCopyWith<$Res> {
  __$$EditCustomerImplCopyWithImpl(
      _$EditCustomerImpl _value, $Res Function(_$EditCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
  }) {
    return _then(_$EditCustomerImpl(
      null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }
}

/// @nodoc

class _$EditCustomerImpl implements _EditCustomer {
  const _$EditCustomerImpl(this.customer);

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CustomerEvent.editCustomer(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditCustomerImpl &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditCustomerImplCopyWith<_$EditCustomerImpl> get copyWith =>
      __$$EditCustomerImplCopyWithImpl<_$EditCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllCustomers,
    required TResult Function(String customerName) searchCustomers,
    required TResult Function(Customer customer) addCustomer,
    required TResult Function(Customer customer) editCustomer,
  }) {
    return editCustomer(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllCustomers,
    TResult? Function(String customerName)? searchCustomers,
    TResult? Function(Customer customer)? addCustomer,
    TResult? Function(Customer customer)? editCustomer,
  }) {
    return editCustomer?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllCustomers,
    TResult Function(String customerName)? searchCustomers,
    TResult Function(Customer customer)? addCustomer,
    TResult Function(Customer customer)? editCustomer,
    required TResult orElse(),
  }) {
    if (editCustomer != null) {
      return editCustomer(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllCustomers value) viewAllCustomers,
    required TResult Function(_SearchCustomers value) searchCustomers,
    required TResult Function(_AddCustomer value) addCustomer,
    required TResult Function(_EditCustomer value) editCustomer,
  }) {
    return editCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult? Function(_SearchCustomers value)? searchCustomers,
    TResult? Function(_AddCustomer value)? addCustomer,
    TResult? Function(_EditCustomer value)? editCustomer,
  }) {
    return editCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllCustomers value)? viewAllCustomers,
    TResult Function(_SearchCustomers value)? searchCustomers,
    TResult Function(_AddCustomer value)? addCustomer,
    TResult Function(_EditCustomer value)? editCustomer,
    required TResult orElse(),
  }) {
    if (editCustomer != null) {
      return editCustomer(this);
    }
    return orElse();
  }
}

abstract class _EditCustomer implements CustomerEvent {
  const factory _EditCustomer(final Customer customer) = _$EditCustomerImpl;

  Customer get customer;
  @JsonKey(ignore: true)
  _$$EditCustomerImplCopyWith<_$EditCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiResponseFailures, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<Customer> get customerList => throw _privateConstructorUsedError;
  List<Customer> get searchList => throw _privateConstructorUsedError;
  Option<Either<ApiResponseFailures, Unit>> get addCustomerOption =>
      throw _privateConstructorUsedError;
  Option<Either<ApiResponseFailures, Unit>> get editCustomerOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
      List<Customer> customerList,
      List<Customer> searchList,
      Option<Either<ApiResponseFailures, Unit>> addCustomerOption,
      Option<Either<ApiResponseFailures, Unit>> editCustomerOption});
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? customerList = null,
    Object? searchList = null,
    Object? addCustomerOption = null,
    Object? editCustomerOption = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      customerList: null == customerList
          ? _value.customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      searchList: null == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      addCustomerOption: null == addCustomerOption
          ? _value.addCustomerOption
          : addCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      editCustomerOption: null == editCustomerOption
          ? _value.editCustomerOption
          : editCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerStateImplCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$CustomerStateImplCopyWith(
          _$CustomerStateImpl value, $Res Function(_$CustomerStateImpl) then) =
      __$$CustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
      List<Customer> customerList,
      List<Customer> searchList,
      Option<Either<ApiResponseFailures, Unit>> addCustomerOption,
      Option<Either<ApiResponseFailures, Unit>> editCustomerOption});
}

/// @nodoc
class __$$CustomerStateImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$CustomerStateImpl>
    implements _$$CustomerStateImplCopyWith<$Res> {
  __$$CustomerStateImplCopyWithImpl(
      _$CustomerStateImpl _value, $Res Function(_$CustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? customerList = null,
    Object? searchList = null,
    Object? addCustomerOption = null,
    Object? editCustomerOption = null,
  }) {
    return _then(_$CustomerStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      customerList: null == customerList
          ? _value._customerList
          : customerList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Customer>,
      addCustomerOption: null == addCustomerOption
          ? _value.addCustomerOption
          : addCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      editCustomerOption: null == editCustomerOption
          ? _value.editCustomerOption
          : editCustomerOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$CustomerStateImpl implements _CustomerState {
  const _$CustomerStateImpl(
      {required this.isLoading,
      required this.failureOrSuccessOption,
      required final List<Customer> customerList,
      required final List<Customer> searchList,
      required this.addCustomerOption,
      required this.editCustomerOption})
      : _customerList = customerList,
        _searchList = searchList;

  @override
  final bool isLoading;
  @override
  final Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption;
  final List<Customer> _customerList;
  @override
  List<Customer> get customerList {
    if (_customerList is EqualUnmodifiableListView) return _customerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerList);
  }

  final List<Customer> _searchList;
  @override
  List<Customer> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  @override
  final Option<Either<ApiResponseFailures, Unit>> addCustomerOption;
  @override
  final Option<Either<ApiResponseFailures, Unit>> editCustomerOption;

  @override
  String toString() {
    return 'CustomerState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, customerList: $customerList, searchList: $searchList, addCustomerOption: $addCustomerOption, editCustomerOption: $editCustomerOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._customerList, _customerList) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList) &&
            (identical(other.addCustomerOption, addCustomerOption) ||
                other.addCustomerOption == addCustomerOption) &&
            (identical(other.editCustomerOption, editCustomerOption) ||
                other.editCustomerOption == editCustomerOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrSuccessOption,
      const DeepCollectionEquality().hash(_customerList),
      const DeepCollectionEquality().hash(_searchList),
      addCustomerOption,
      editCustomerOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      __$$CustomerStateImplCopyWithImpl<_$CustomerStateImpl>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  const factory _CustomerState(
      {required final bool isLoading,
      required final Option<Either<ApiResponseFailures, Unit>>
          failureOrSuccessOption,
      required final List<Customer> customerList,
      required final List<Customer> searchList,
      required final Option<Either<ApiResponseFailures, Unit>>
          addCustomerOption,
      required final Option<Either<ApiResponseFailures, Unit>>
          editCustomerOption}) = _$CustomerStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<ApiResponseFailures, Unit>> get failureOrSuccessOption;
  @override
  List<Customer> get customerList;
  @override
  List<Customer> get searchList;
  @override
  Option<Either<ApiResponseFailures, Unit>> get addCustomerOption;
  @override
  Option<Either<ApiResponseFailures, Unit>> get editCustomerOption;
  @override
  @JsonKey(ignore: true)
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
