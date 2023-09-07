import 'package:flutter/material.dart';

// import 'package:flutterdashboard/login/privilege/Privilege.dart';

import 'package:flutterdashboard/config/theme.dart';
// import 'package:flutterdashboard/login/Login.dart';

class NavigationBarView extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const NavigationBarView({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.blue, // Change the selected button color here
      unselectedItemColor:
          Colors.grey, // Change the unselected button color here
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.point_of_sale), label: 'Sales Order'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
      ],
    );
  }
}


