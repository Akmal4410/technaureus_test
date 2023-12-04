import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technaureus/presentation/features/customer_page/cutomer_page.dart';
import 'package:technaureus/presentation/features/choose_customer_page/choose_customer_page.dart';
import 'package:technaureus/presentation/features/home_page/home_bloc/home_bloc.dart';
import 'package:technaureus/presentation/features/product_page/product_page.dart';
import 'package:technaureus/utils/size_constants.dart';
import 'package:technaureus/utils/text_style.dart';

class HomeGridCard extends StatelessWidget {
  const HomeGridCard({
    super.key,
    required this.index,
    required this.selectedIndex,
  });

  final int index;
  final int? selectedIndex;

  static final List<IconData> _icons = [
    Icons.groups_rounded,
    Icons.inventory_2_outlined,
    Icons.note_add_outlined,
    Icons.assignment_return_outlined,
    Icons.payments_outlined,
    Icons.local_mall_outlined,
    Icons.summarize_outlined,
    Icons.route_outlined,
  ];

  static final List<String> _gridText = [
    "Customers",
    "Products",
    "New Order",
    "Return Order",
    "Add Payment",
    "Today's Order",
    "Today's Summery",
    "Route"
  ];

  void goToNextPage(int index, BuildContext context) {
    switch (index) {
      case 0:
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.onTap(index));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CustomerPage(),
        ));
        break;
      case 1:
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.onTap(index));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ProductPage(),
        ));
        break;
      case 2:
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.onTap(index));
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ChooseCustomerPage(),
        ));
        break;
      default:
        BlocProvider.of<HomeBloc>(context).add(HomeEvent.onTap(index));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToNextPage(index, context),
      child: Container(
        decoration: BoxDecoration(
          color: index == selectedIndex ? Colors.blue.shade900 : Colors.white,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _icons[index],
              size: 32,
              color:
                  index == selectedIndex ? Colors.white : Colors.blue.shade900,
            ),
            kHeight8,
            Text(
              _gridText[index],
              style: kTextStyle16Bold.copyWith(
                color: index == selectedIndex ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
