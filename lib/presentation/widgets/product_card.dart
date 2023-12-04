import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/widgets/add_remove_button.dart';
import 'package:technaureus/utils/app_constants.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kAppPaddingAll12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 12,
            color: Color.fromRGBO(0, 0, 0, 0.16),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CachedNetworkImage(
            height: 70,
            imageUrl: AppConstants.imageBaseUrl + product.image,
            fit: BoxFit.cover,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: kTextStyle14Bold.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      kHeight8,
                      Text(
                        "\$${product.price}/-",
                        style: kTextStyle14BoldGrey,
                      )
                    ],
                  ),
                ),
                buildVerticalDivider(),
                kWidth12,
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    final cartItem = state.cartItems[product.id.toString()];
                    return cartItem == null
                        ? _CartAddButton(
                            onTap: () => BlocProvider.of<CartBloc>(context)
                                .add(CartEvent.addToCart(product)),
                          )
                        : AddRemoveButton(
                            value: cartItem.quantity,
                            onAdd: () {
                              BlocProvider.of<CartBloc>(context).add(
                                CartEvent.incrementCartCount(product.id),
                              );
                            },
                            onRemove: () {
                              BlocProvider.of<CartBloc>(context).add(
                                CartEvent.decrementCartCount(product.id),
                              );
                            },
                          );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CartAddButton extends StatelessWidget {
  const _CartAddButton({
    required this.onTap,
  });

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.blue.shade900,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Text(
          "Add",
          style: kTextStyle14Medium.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
