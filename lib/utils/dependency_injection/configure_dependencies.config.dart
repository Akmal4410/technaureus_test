// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;
import 'package:technaureus/data/datasources/cart_datasource.dart' as _i3;
import 'package:technaureus/data/datasources/customer_datasource.dart' as _i4;
import 'package:technaureus/data/datasources/product_datasource.dart' as _i9;
import 'package:technaureus/data/repositories/cart_repository_impl.dart'
    as _i11;
import 'package:technaureus/data/repositories/customer_repository_impl.dart'
    as _i13;
import 'package:technaureus/data/repositories/product_repository_impl.dart'
    as _i15;
import 'package:technaureus/domain/repositories/i_cart_repository.dart' as _i10;
import 'package:technaureus/domain/repositories/i_customer_repository.dart'
    as _i12;
import 'package:technaureus/domain/repositories/i_product_repository.dart'
    as _i14;
import 'package:technaureus/domain/usecases/get_cart.dart' as _i16;
import 'package:technaureus/domain/usecases/get_customer.dart' as _i17;
import 'package:technaureus/domain/usecases/get_product.dart' as _i18;
import 'package:technaureus/presentation/features/choose_customer_page/choose_customer_bloc/choose_customer_bloc.dart'
    as _i21;
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart'
    as _i22;
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart'
    as _i20;
import 'package:technaureus/presentation/features/home_page/home_bloc/home_bloc.dart'
    as _i5;
import 'package:technaureus/presentation/features/product_page/product_bloc/product_bloc.dart'
    as _i19;
import 'package:technaureus/utils/dependency_injection/connectivity_injectable_module.dart'
    as _i23;
import 'package:technaureus/utils/network_service/data/network_facade.dart'
    as _i7;
import 'package:technaureus/utils/network_service/domain/i_network_facade.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final connectivityInjectableModule = _$ConnectivityInjectableModule();
    gh.lazySingleton<_i3.CartDatasoucre>(
      () => _i3.LocalCartDatasource(),
      instanceName: 'LocalCartDatasource',
    );
    gh.lazySingleton<_i4.CustomerDatasource>(
      () => _i4.LocalCustomerDatasource(),
      instanceName: 'LocalCustomerDatasource',
    );
    gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
    gh.lazySingleton<_i6.INetworkFacade>(() => _i7.NetworkFacade());
    gh.lazySingleton<_i8.InternetConnectionChecker>(
        () => connectivityInjectableModule.connectivity);
    gh.lazySingleton<_i9.ProductDatasource>(
      () => _i9.RemoteProductDatasource(gh<_i6.INetworkFacade>()),
      instanceName: 'RemoteProductDatasource',
    );
    gh.lazySingleton<_i9.ProductDatasource>(
      () => _i9.LocalProductDatasource(),
      instanceName: 'LocalProductDatasource',
    );
    gh.lazySingleton<_i3.CartDatasoucre>(
      () => _i3.RemoteCartDataSource(gh<_i6.INetworkFacade>()),
      instanceName: 'RemoteCartDataSource',
    );
    gh.lazySingleton<_i4.CustomerDatasource>(
      () => _i4.RemoteCustomerDatasource(gh<_i6.INetworkFacade>()),
      instanceName: 'RemoteCustomerDatasource',
    );
    gh.lazySingleton<_i10.ICartRepository>(() => _i11.CartRepositoryImpl(
          gh<_i3.CartDatasoucre>(instanceName: 'LocalCartDatasource'),
          gh<_i3.CartDatasoucre>(instanceName: 'RemoteCartDataSource'),
        ));
    gh.lazySingleton<_i12.ICustomerRepository>(() =>
        _i13.CustomerRepositoryImpl(
          gh<_i4.CustomerDatasource>(instanceName: 'RemoteCustomerDatasource'),
          gh<_i4.CustomerDatasource>(instanceName: 'LocalCustomerDatasource'),
          gh<_i8.InternetConnectionChecker>(),
        ));
    gh.lazySingleton<_i14.IProductRepository>(() => _i15.ProductRepositoryImpl(
          gh<_i9.ProductDatasource>(instanceName: 'RemoteProductDatasource'),
          gh<_i9.ProductDatasource>(instanceName: 'LocalProductDatasource'),
          gh<_i8.InternetConnectionChecker>(),
        ));
    gh.lazySingleton<_i16.GetCart>(
        () => _i16.GetCartImpl(gh<_i10.ICartRepository>()));
    gh.lazySingleton<_i17.GetCustomer>(
        () => _i17.GetCustomerImpl(gh<_i12.ICustomerRepository>()));
    gh.lazySingleton<_i18.GetProduct>(
        () => _i18.GetProductImpl(gh<_i14.IProductRepository>()));
    gh.factory<_i19.ProductBloc>(() => _i19.ProductBloc(gh<_i18.GetProduct>()));
    gh.factory<_i20.CartBloc>(() => _i20.CartBloc(gh<_i16.GetCart>()));
    gh.factory<_i21.ChooseCustomerBloc>(
        () => _i21.ChooseCustomerBloc(gh<_i17.GetCustomer>()));
    gh.factory<_i22.CustomerBloc>(
        () => _i22.CustomerBloc(gh<_i17.GetCustomer>()));
    return this;
  }
}

class _$ConnectivityInjectableModule
    extends _i23.ConnectivityInjectableModule {}
