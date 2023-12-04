import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    super.key,
    required this.cartItems,
  });
  final List<Cart> cartItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Subtotal",
                style: kTextStyle14Medium,
              ),
              Text(
                "\$${getSubTotal()}",
                style: kTextStyle14Medium,
              ),
            ],
          ),
          kHeight16,
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tax",
                style: kTextStyle14Medium,
              ),
              Text(
                "\$50.00",
                style: kTextStyle14Medium,
              ),
            ],
          ),
          kHeight12,
          kDividerLight,
          kHeight12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Total",
                style: kTextStyle16Bold,
              ),
              Text(
                "\$${getTotal()}",
                style: kTextStyle16Bold,
              ),
            ],
          ),
          kHeight12,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CartBloc>(context).add(
                    CartEvent.createOrder(getTotal(), cartItems),
                  );
                },
                child: Text(
                  "Order",
                  style: kTextStyle14Medium.copyWith(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Order & Deliver",
                  style: kTextStyle14Medium.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getSubTotal() {
    int sum = 0;
    for (var item in cartItems) {
      sum = sum + (item.price * item.quantity);
    }
    return sum.toStringAsFixed(2);
  }

  String getTotal() {
    final subTotal = double.tryParse(getSubTotal()) ?? 0;
    return (subTotal + 50).toStringAsFixed(2);
  }
}
