import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/domain/entities/product.dart';
import 'package:technaureus/presentation/features/edit_cart_page/cart_bloc/cart_bloc.dart';
import 'package:technaureus/presentation/features/product_page/product_bloc/product_bloc.dart';
import 'package:technaureus/presentation/widgets/product_card.dart';
import 'package:technaureus/presentation/widgets/search_field.dart';
import 'package:technaureus/utils/debouncer/debouncer.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class ProductPageBody extends StatefulWidget {
  const ProductPageBody({super.key});

  @override
  State<ProductPageBody> createState() => _ProductPageBodyState();
}

class _ProductPageBodyState extends State<ProductPageBody> {
  final textController = TextEditingController();
  final _debouncer = Debouncer(milliseconds: 500);

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductBloc>(context).add(
      const ProductEvent.viewAllProducts(),
    );
    BlocProvider.of<CartBloc>(context).add(
      const CartEvent.getCartQuatities(),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: kAppPaddingAll12,
          sliver: SliverAppBar(
            collapsedHeight: 0,
            toolbarHeight: 0,
            pinned: false,
            snap: true,
            floating: true,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 50),
              child: SearchField(
                controller: textController,
                suffixIcon: _searchFieldSuffix(),
                onChanged: (productName) => _debouncer.run(() {
                  BlocProvider.of<ProductBloc>(context).add(
                    ProductEvent.searchProducts(productName),
                  );
                }),
              ),
            ),
          ),
        ),
        SliverPadding(
          padding: kAppPaddingAll12,
          sliver: BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
              return state.isLoading
                  ? const SliverToBoxAdapter(
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : textController.text.isEmpty
                      ? _buildProducts(state.productList)
                      : _buildSearchProducts(
                          state.searchList,
                          textController.text.trim(),
                        );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProducts(List<Product> productList) {
    return productList.isEmpty
        ? const SliverToBoxAdapter(
            child: Center(child: Text("No Products")),
          )
        : SliverGrid.builder(
            itemCount: productList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return ProductCard(productList[index]);
            },
          );
  }

  Widget _buildSearchProducts(List<Product> searchList, String value) {
    return searchList.isEmpty
        ? SliverToBoxAdapter(
            child: Center(child: Text("No Products with $value")),
          )
        : SliverGrid.builder(
            itemCount: searchList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              childAspectRatio: 1.2,
            ),
            itemBuilder: (context, index) {
              return ProductCard(searchList[index]);
            },
          );
  }

  Row _searchFieldSuffix() {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: kAppPaddingVertical10,
          child: VerticalDivider(
            color: Colors.grey,
          ),
        ),
        Text(
          "Fruits",
          style: kTextStyle14BoldGrey,
        ),
        kWidth12,
      ],
    );
  }
}
