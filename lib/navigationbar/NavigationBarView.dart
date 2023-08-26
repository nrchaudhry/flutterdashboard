import 'package:flutter/material.dart';

// import 'package:flutterdashboard/login/privilege/Privilege.dart';

import 'package:flutterdashboard/config/theme.dart';
// import 'package:flutterdashboard/login/Login.dart';

import 'package:flutterdashboard/features/dashboard/DashboardView.dart';
import 'package:flutterdashboard/features/academics/campus/CampusesView.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  //Future<List<Privilege>> privileges = Login.privileges.cast<Map<String, dynamic>>().map<Privilege>((json) => Privilege.fromJson(json)).toList();

  int cindex = 0;
  int active = 0;
  final screens = const [
    DashboardView(),
    CampusesView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[cindex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: sPlash2,
        // surfaceTintColor: Colors.red,
        height: 70,
        selectedIndex: cindex,
        onDestinationSelected: (newindex) {
          setState(() {
            cindex = newindex;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              //color: black,
            ),
            label: 'Home',
            // tooltip: 'abcd',
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper),
            label: 'Campus',
            selectedIcon: Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
