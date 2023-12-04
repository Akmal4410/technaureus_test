import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/features/edit_cart_page/edit_cart_page.dart';
import 'package:technaureus/presentation/features/product_page/product_bloc/product_bloc.dart';
import 'package:technaureus/presentation/features/product_page/widgets/product_page_body.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/utils.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) => null,
          ),
        );
      },
      child: BlocListener<CartBloc, CartState>(
        listener: (context, cartState) {
          cartState.cartOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (failure) => showErrorSnackbar(failure, context),
              (_) => null,
            ),
          );
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Nesto Hypermarket"),
            actions: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditCartPage(),
                  ),
                ).then((value) {
                  BlocProvider.of<CartBloc>(context).add(
                    const CartEvent.getCartQuatities(),
                  );
                }),
                child: const Padding(
                  padding: kAppbarRightPadding,
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ),
            ],
          ),
          body: const ProductPageBody(),
        ),
      ),
    );
  }
}
