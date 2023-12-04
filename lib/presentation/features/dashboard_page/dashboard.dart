import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:technaureus/presentation/features/home_page/home_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScreens(),
      items: _navBarsItems(context),
      stateManagement: false,
      navBarStyle: NavBarStyle.style6,
      popAllScreensOnTapAnyTabs: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: const [
          BoxShadow(
            offset: Offset(2, 2),
            blurRadius: 18,
            color: Color.fromRGBO(0, 0, 0, 0.30),
          )
        ],
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const SizedBox(),
      const SizedBox(),
      const SizedBox(),
      const SizedBox(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorPrimary: Colors.blue.shade900,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.note_add_outlined),
        title: "New Order",
        activeColorPrimary: Colors.blue.shade900,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.shopping_cart_outlined),
        title: "Cart",
        activeColorPrimary: Colors.blue.shade900,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.assignment_return_outlined),
        title: "Return Order",
        activeColorPrimary: Colors.blue.shade900,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.groups_outlined),
        title: "Customers",
        activeColorPrimary: Colors.blue.shade900,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
