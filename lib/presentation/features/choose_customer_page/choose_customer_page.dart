import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/choose_customer_page/choose_customer_bloc/choose_customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/customer_bloc/customer_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/widgets/customer_page_body.dart';
import 'package:technaureus/presentation/features/product_page/product_page.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/utils.dart';

class ChooseCustomerPage extends StatelessWidget {
  const ChooseCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) => null,
          ),
        );
      },
      child: BlocListener<ChooseCustomerBloc, ChooseCustomerState>(
        listener: (context, state) {
          state.chooseCustomerOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (failure) => showErrorSnackbar(failure, context),
              (_) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProductPage(),
                  ),
                );
              },
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("New Order"),
            actions: const [
              Padding(
                padding: kAppbarRightPadding,
                child: Icon(Icons.menu),
              ),
            ],
          ),
          body: const CustomerPageBody(),
        ),
      ),
    );
  }
}
