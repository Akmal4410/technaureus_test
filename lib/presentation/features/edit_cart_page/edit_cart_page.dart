import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/features/edit_cart_page/widgets/cart_card.dart';
import 'package:technaureus/presentation/features/edit_cart_page/widgets/checkout_card.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/utils.dart';

class EditCartPage extends StatelessWidget {
  const EditCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CartBloc, CartState>(
      listener: (context, state) {
        state.cartOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) => null,
          ),
        );
        state.orderOption.fold(
          () => null,
          (failureOrSuccess) => failureOrSuccess.fold(
            (failure) => showErrorSnackbar(failure, context),
            (_) => Utils.showSnakbar(
              title: "Order Successfully",
              context: context,
              color: Colors.green,
            ),
          ),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Your Cart\nNesto Hypermarket",
            textAlign: TextAlign.center,
          ),
          actions: const [
            Padding(
              padding: kAppbarRightPadding,
              child: Icon(Icons.menu),
            ),
          ],
        ),
        body: const _CartPageBody(),
      ),
    );
  }
}

class _CartPageBody extends StatelessWidget {
  const _CartPageBody();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<CartBloc>(context).add(
        const CartEvent.getCartQuatities(),
      );
    });
    return Padding(
      padding: kAppPaddingAll12,
      child: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          final cartItems = state.cartItems.values.toList();
          return cartItems.isEmpty
              ? const Center(
                  child: Text("Cart is Empty"),
                )
              : CustomScrollView(
                  slivers: [
                    SliverList.separated(
                      itemCount: cartItems.length,
                      separatorBuilder: (context, index) => kDividerLight,
                      itemBuilder: (context, index) =>
                          CartCard(cartItems[index]),
                    ),
                    SliverToBoxAdapter(
                      child: CheckoutCard(cartItems: cartItems),
                    )
                  ],
                );
        },
      ),
    );
  }
}
