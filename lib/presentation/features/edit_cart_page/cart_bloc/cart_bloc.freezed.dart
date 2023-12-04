// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCartQuatitiesImplCopyWith<$Res> {
  factory _$$GetCartQuatitiesImplCopyWith(_$GetCartQuatitiesImpl value,
          $Res Function(_$GetCartQuatitiesImpl) then) =
      __$$GetCartQuatitiesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartQuatitiesImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartQuatitiesImpl>
    implements _$$GetCartQuatitiesImplCopyWith<$Res> {
  __$$GetCartQuatitiesImplCopyWithImpl(_$GetCartQuatitiesImpl _value,
      $Res Function(_$GetCartQuatitiesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartQuatitiesImpl implements _GetCartQuatities {
  const _$GetCartQuatitiesImpl();

  @override
  String toString() {
    return 'CartEvent.getCartQuatities()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartQuatitiesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return getCartQuatities();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return getCartQuatities?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (getCartQuatities != null) {
      return getCartQuatities();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return getCartQuatities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return getCartQuatities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (getCartQuatities != null) {
      return getCartQuatities(this);
    }
    return orElse();
  }
}

abstract class _GetCartQuatities implements CartEvent {
  const factory _GetCartQuatities() = _$GetCartQuatitiesImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToCartImpl(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return addToCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return addToCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(final Product product) = _$AddToCartImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements _RemoveFromCart {
  const _$RemoveFromCartImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return removeFromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return removeFromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart(final int productId) = _$RemoveFromCartImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementCartCountImplCopyWith<$Res> {
  factory _$$IncrementCartCountImplCopyWith(_$IncrementCartCountImpl value,
          $Res Function(_$IncrementCartCountImpl) then) =
      __$$IncrementCartCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$IncrementCartCountImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementCartCountImpl>
    implements _$$IncrementCartCountImplCopyWith<$Res> {
  __$$IncrementCartCountImplCopyWithImpl(_$IncrementCartCountImpl _value,
      $Res Function(_$IncrementCartCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$IncrementCartCountImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IncrementCartCountImpl implements _IncrementCartCount {
  const _$IncrementCartCountImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.incrementCartCount(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCartCountImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCartCountImplCopyWith<_$IncrementCartCountImpl> get copyWith =>
      __$$IncrementCartCountImplCopyWithImpl<_$IncrementCartCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return incrementCartCount(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return incrementCartCount?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCartCount != null) {
      return incrementCartCount(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return incrementCartCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return incrementCartCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCartCount != null) {
      return incrementCartCount(this);
    }
    return orElse();
  }
}

abstract class _IncrementCartCount implements CartEvent {
  const factory _IncrementCartCount(final int productId) =
      _$IncrementCartCountImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$IncrementCartCountImplCopyWith<_$IncrementCartCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementCartCountImplCopyWith<$Res> {
  factory _$$DecrementCartCountImplCopyWith(_$DecrementCartCountImpl value,
          $Res Function(_$DecrementCartCountImpl) then) =
      __$$DecrementCartCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int productId});
}

/// @nodoc
class __$$DecrementCartCountImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementCartCountImpl>
    implements _$$DecrementCartCountImplCopyWith<$Res> {
  __$$DecrementCartCountImplCopyWithImpl(_$DecrementCartCountImpl _value,
      $Res Function(_$DecrementCartCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$DecrementCartCountImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DecrementCartCountImpl implements _DecrementCartCount {
  const _$DecrementCartCountImpl(this.productId);

  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.decrementCartCount(productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementCartCountImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementCartCountImplCopyWith<_$DecrementCartCountImpl> get copyWith =>
      __$$DecrementCartCountImplCopyWithImpl<_$DecrementCartCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return decrementCartCount(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return decrementCartCount?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCartCount != null) {
      return decrementCartCount(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return decrementCartCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return decrementCartCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCartCount != null) {
      return decrementCartCount(this);
    }
    return orElse();
  }
}

abstract class _DecrementCartCount implements CartEvent {
  const factory _DecrementCartCount(final int productId) =
      _$DecrementCartCountImpl;

  int get productId;
  @JsonKey(ignore: true)
  _$$DecrementCartCountImplCopyWith<_$DecrementCartCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateOrderImplCopyWith<$Res> {
  factory _$$CreateOrderImplCopyWith(
          _$CreateOrderImpl value, $Res Function(_$CreateOrderImpl) then) =
      __$$CreateOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String total, List<Cart> cartItems});
}

/// @nodoc
class __$$CreateOrderImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CreateOrderImpl>
    implements _$$CreateOrderImplCopyWith<$Res> {
  __$$CreateOrderImplCopyWithImpl(
      _$CreateOrderImpl _value, $Res Function(_$CreateOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? cartItems = null,
  }) {
    return _then(_$CreateOrderImpl(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<Cart>,
    ));
  }
}

/// @nodoc

class _$CreateOrderImpl implements _CreateOrder {
  const _$CreateOrderImpl(this.total, final List<Cart> cartItems)
      : _cartItems = cartItems;

  @override
  final String total;
  final List<Cart> _cartItems;
  @override
  List<Cart> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartEvent.createOrder(total: $total, cartItems: $cartItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      __$$CreateOrderImplCopyWithImpl<_$CreateOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return createOrder(total, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return createOrder?.call(total, cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(total, cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements CartEvent {
  const factory _CreateOrder(final String total, final List<Cart> cartItems) =
      _$CreateOrderImpl;

  String get total;
  List<Cart> get cartItems;
  @JsonKey(ignore: true)
  _$$CreateOrderImplCopyWith<_$CreateOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCartImpl implements _ClearCart {
  const _$ClearCartImpl();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCartQuatities,
    required TResult Function(Product product) addToCart,
    required TResult Function(int productId) removeFromCart,
    required TResult Function(int productId) incrementCartCount,
    required TResult Function(int productId) decrementCartCount,
    required TResult Function(String total, List<Cart> cartItems) createOrder,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCartQuatities,
    TResult? Function(Product product)? addToCart,
    TResult? Function(int productId)? removeFromCart,
    TResult? Function(int productId)? incrementCartCount,
    TResult? Function(int productId)? decrementCartCount,
    TResult? Function(String total, List<Cart> cartItems)? createOrder,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCartQuatities,
    TResult Function(Product product)? addToCart,
    TResult Function(int productId)? removeFromCart,
    TResult Function(int productId)? incrementCartCount,
    TResult Function(int productId)? decrementCartCount,
    TResult Function(String total, List<Cart> cartItems)? createOrder,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCartQuatities value) getCartQuatities,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_IncrementCartCount value) incrementCartCount,
    required TResult Function(_DecrementCartCount value) decrementCartCount,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCartQuatities value)? getCartQuatities,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_IncrementCartCount value)? incrementCartCount,
    TResult? Function(_DecrementCartCount value)? decrementCartCount,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCartQuatities value)? getCartQuatities,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_IncrementCartCount value)? incrementCartCount,
    TResult Function(_DecrementCartCount value)? decrementCartCount,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements CartEvent {
  const factory _ClearCart() = _$ClearCartImpl;
}

/// @nodoc
mixin _$CartState {
  Option<Either<ApiResponseFailures, Unit>> get cartOption =>
      throw _privateConstructorUsedError;
  Map<String, Cart> get cartItems => throw _privateConstructorUsedError;
  Option<Either<ApiResponseFailures, Unit>> get orderOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {Option<Either<ApiResponseFailures, Unit>> cartOption,
      Map<String, Cart> cartItems,
      Option<Either<ApiResponseFailures, Unit>> orderOption});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartOption = null,
    Object? cartItems = null,
    Object? orderOption = null,
  }) {
    return _then(_value.copyWith(
      cartOption: null == cartOption
          ? _value.cartOption
          : cartOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, Cart>,
      orderOption: null == orderOption
          ? _value.orderOption
          : orderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiResponseFailures, Unit>> cartOption,
      Map<String, Cart> cartItems,
      Option<Either<ApiResponseFailures, Unit>> orderOption});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartOption = null,
    Object? cartItems = null,
    Object? orderOption = null,
  }) {
    return _then(_$CartStateImpl(
      cartOption: null == cartOption
          ? _value.cartOption
          : cartOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as Map<String, Cart>,
      orderOption: null == orderOption
          ? _value.orderOption
          : orderOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiResponseFailures, Unit>>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required this.cartOption,
      required final Map<String, Cart> cartItems,
      required this.orderOption})
      : _cartItems = cartItems;

  @override
  final Option<Either<ApiResponseFailures, Unit>> cartOption;
  final Map<String, Cart> _cartItems;
  @override
  Map<String, Cart> get cartItems {
    if (_cartItems is EqualUnmodifiableMapView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartItems);
  }

  @override
  final Option<Either<ApiResponseFailures, Unit>> orderOption;

  @override
  String toString() {
    return 'CartState(cartOption: $cartOption, cartItems: $cartItems, orderOption: $orderOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.cartOption, cartOption) ||
                other.cartOption == cartOption) &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.orderOption, orderOption) ||
                other.orderOption == orderOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartOption,
      const DeepCollectionEquality().hash(_cartItems), orderOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final Option<Either<ApiResponseFailures, Unit>> cartOption,
      required final Map<String, Cart> cartItems,
      required final Option<Either<ApiResponseFailures, Unit>>
          orderOption}) = _$CartStateImpl;

  @override
  Option<Either<ApiResponseFailures, Unit>> get cartOption;
  @override
  Map<String, Cart> get cartItems;
  @override
  Option<Either<ApiResponseFailures, Unit>> get orderOption;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
