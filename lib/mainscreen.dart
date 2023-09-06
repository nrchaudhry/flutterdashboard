
// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'package:flutterdashboard/navigationbar/NavigationBarView.dart';

import 'package:flutterdashboard/features/dashboard/DashboardView.dart';
import 'package:flutterdashboard/features/product/productcategory/ProductCategoriesView.dart';
import 'package:flutterdashboard/features/product/productitem/ProductItemsView.dart';

class MainScreen extends StatefulWidget {
  final int currentIndex;

  const MainScreen({super.key, required this.currentIndex});

  @override
  // ignore: no_logic_in_create_state
  _MainScreenState createState() => _MainScreenState(currentIndex);
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex;
  final List<Widget> _screens = [
    const ProductCategoriesView(),
    const ProductCategoriesView(),
    const DashboardView(),
  ];

  _MainScreenState(this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentIndex],
      bottomNavigationBar: NavigationBarView(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
