import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:technaureus/presentation/features/choose_customer_page/choose_customer_bloc/choose_customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart';
import 'package:technaureus/presentation/features/dashboard_page/dashboard.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/features/home_page/home_bloc/home_bloc.dart';
import 'package:technaureus/presentation/features/product_page/product_bloc/product_bloc.dart';
import 'package:technaureus/utils/configure_hive_db.dart';
import 'package:technaureus/utils/dependency_injection/configure_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies(Environment.dev);
  await MyLocalDB.configureHiveDB();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (contextt) => getIt<ChooseCustomerBloc>()),
        BlocProvider(create: (contextt) => getIt<CustomerBloc>()),
        BlocProvider(create: (contextt) => getIt<CartBloc>()),
        BlocProvider(create: (contextt) => getIt<HomeBloc>()),
        BlocProvider(create: (contextt) => getIt<ProductBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(145, 40),
              maximumSize: const Size(145, 40),
              elevation: 5,
              backgroundColor: Colors.blue.shade900,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        home: const DashboardPage(),
      ),
    );
  }
}
