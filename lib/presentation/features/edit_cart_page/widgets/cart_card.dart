import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/cart.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/widgets/add_remove_button.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/string_extension.dart';
import 'package:technaureus/utils/text_style.dart';

class CartCard extends StatelessWidget {
  const CartCard(
    this.cart, {
    super.key,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kAppPaddingAll5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.name.toCapital(),
                style: kTextStyle16Bold.copyWith(
                  color: Colors.black,
                ),
              ),
              kHeight4,
              Text(
                "\$${cart.price} /-",
                style: kTextStyle14Bold.copyWith(color: Colors.black54),
              )
            ],
          ),
          Row(
            children: [
              AddRemoveButton(
                value: cart.quantity,
                onAdd: () {
                  BlocProvider.of<CartBloc>(context).add(
                    CartEvent.incrementCartCount(cart.id),
                  );
                },
                onRemove: () {
                  BlocProvider.of<CartBloc>(context).add(
                    CartEvent.decrementCartCount(cart.id),
                  );
                },
              ),
              kWidth8,
              GestureDetector(
                onTap: () {
                  BlocProvider.of<CartBloc>(context).add(
                    CartEvent.removeFromCart(cart.id),
                  );
                },
                child: const Icon(
                  Icons.delete_rounded,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
