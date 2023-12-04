// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllProducts,
    required TResult Function(String productName) searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllProducts,
    TResult? Function(String productName)? searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllProducts,
    TResult Function(String productName)? searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllProducts value) viewAllProducts,
    required TResult Function(_SearchProducts value) searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllProducts value)? viewAllProducts,
    TResult? Function(_SearchProducts value)? searchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllProducts value)? viewAllProducts,
    TResult Function(_SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ViewAllProductsImplCopyWith<$Res> {
  factory _$$ViewAllProductsImplCopyWith(_$ViewAllProductsImpl value,
          $Res Function(_$ViewAllProductsImpl) then) =
      __$$ViewAllProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewAllProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ViewAllProductsImpl>
    implements _$$ViewAllProductsImplCopyWith<$Res> {
  __$$ViewAllProductsImplCopyWithImpl(
      _$ViewAllProductsImpl _value, $Res Function(_$ViewAllProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewAllProductsImpl implements _ViewAllProducts {
  const _$ViewAllProductsImpl();

  @override
  String toString() {
    return 'ProductEvent.viewAllProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ViewAllProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllProducts,
    required TResult Function(String productName) searchProducts,
  }) {
    return viewAllProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllProducts,
    TResult? Function(String productName)? searchProducts,
  }) {
    return viewAllProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllProducts,
    TResult Function(String productName)? searchProducts,
    required TResult orElse(),
  }) {
    if (viewAllProducts != null) {
      return viewAllProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllProducts value) viewAllProducts,
    required TResult Function(_SearchProducts value) searchProducts,
  }) {
    return viewAllProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllProducts value)? viewAllProducts,
    TResult? Function(_SearchProducts value)? searchProducts,
  }) {
    return viewAllProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllProducts value)? viewAllProducts,
    TResult Function(_SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (viewAllProducts != null) {
      return viewAllProducts(this);
    }
    return orElse();
  }
}

abstract class _ViewAllProducts implements ProductEvent {
  const factory _ViewAllProducts() = _$ViewAllProductsImpl;
}

/// @nodoc
abstract class _$$SearchProductsImplCopyWith<$Res> {
  factory _$$SearchProductsImplCopyWith(_$SearchProductsImpl value,
          $Res Function(_$SearchProductsImpl) then) =
      __$$SearchProductsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productName});
}

/// @nodoc
class __$$SearchProductsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchProductsImpl>
    implements _$$SearchProductsImplCopyWith<$Res> {
  __$$SearchProductsImplCopyWithImpl(
      _$SearchProductsImpl _value, $Res Function(_$SearchProductsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productName = null,
  }) {
    return _then(_$SearchProductsImpl(
      null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsImpl implements _SearchProducts {
  const _$SearchProductsImpl(this.productName);

  @override
  final String productName;

  @override
  String toString() {
    return 'ProductEvent.searchProducts(productName: $productName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsImpl &&
            (identical(other.productName, productName) ||
                other.productName == productName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      __$$SearchProductsImplCopyWithImpl<_$SearchProductsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() viewAllProducts,
    required TResult Function(String productName) searchProducts,
  }) {
    return searchProducts(productName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? viewAllProducts,
    TResult? Function(String productName)? searchProducts,
  }) {
    return searchProducts?.call(productName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? viewAllProducts,
    TResult Function(String productName)? searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(productName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ViewAllProducts value) viewAllProducts,
    required TResult Function(_SearchProducts value) searchProducts,
  }) {
    return searchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ViewAllProducts value)? viewAllProducts,
    TResult? Function(_SearchProducts value)? searchProducts,
  }) {
    return searchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ViewAllProducts value)? viewAllProducts,
    TResult Function(_SearchProducts value)? searchProducts,
    required TResult orElse(),
  }) {
    if (searchProducts != null) {
      return searchProducts(this);
    }
    return orElse();
  }
}

abstract class _SearchProducts implements ProductEvent {
  const factory _SearchProducts(final String productName) =
      _$SearchProductsImpl;

  String get productName;
  @JsonKey(ignore: true)
  _$$SearchProductsImplCopyWith<_$SearchProductsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiResponseFailures, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  List<Product> get productList => throw _privateConstructorUsedError;
  List<Product> get searchList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
      List<Product> productList,
      List<Product> searchList});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? productList = null,
    Object? searchList = null,
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
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchList: null == searchList
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption,
      List<Product> productList,
      List<Product> searchList});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccessOption = null,
    Object? productList = null,
    Object? searchList = null,
  }) {
    return _then(_$ProductStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchList: null == searchList
          ? _value._searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {required this.isLoading,
      required this.failureOrSuccessOption,
      required final List<Product> productList,
      required final List<Product> searchList})
      : _productList = productList,
        _searchList = searchList;

  @override
  final bool isLoading;
  @override
  final Option<Either<ApiResponseFailures, Unit>> failureOrSuccessOption;
  final List<Product> _productList;
  @override
  List<Product> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  final List<Product> _searchList;
  @override
  List<Product> get searchList {
    if (_searchList is EqualUnmodifiableListView) return _searchList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchList);
  }

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, failureOrSuccessOption: $failureOrSuccessOption, productList: $productList, searchList: $searchList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            const DeepCollectionEquality()
                .equals(other._searchList, _searchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      failureOrSuccessOption,
      const DeepCollectionEquality().hash(_productList),
      const DeepCollectionEquality().hash(_searchList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {required final bool isLoading,
      required final Option<Either<ApiResponseFailures, Unit>>
          failureOrSuccessOption,
      required final List<Product> productList,
      required final List<Product> searchList}) = _$ProductStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<ApiResponseFailures, Unit>> get failureOrSuccessOption;
  @override
  List<Product> get productList;
  @override
  List<Product> get searchList;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
