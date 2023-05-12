import 'package:flutter/material.dart';

import 'package:flutterdashboard/login/LoginView.dart';

import '../event/EventView.dart';
import '../news/NewsesView.dart';
import '../project/ProjectView.dart';
import '../theme.dart';

class NavigationBarAtLoginView extends StatefulWidget {
  const NavigationBarAtLoginView({super.key});

  @override
  State<NavigationBarAtLoginView> createState() =>
      _NavigationBarAtLoginViewState();
}

class _NavigationBarAtLoginViewState extends State<NavigationBarAtLoginView> {
  int cindex = 0;
  int active = 0;
  final screens = const [
    LoginView(),
    NewsesView(),
    EventView(),
    ProjectView(),
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
              Icons.login,
              //color: black,
            ),
            label: 'Login',
            // tooltip: 'abcd',
            selectedIcon: Icon(
              Icons.login,
              color: Colors.white,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper),
            label: 'News',
            selectedIcon: Icon(
              Icons.newspaper,
              color: Colors.white,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.event),
            label: 'Events',
            selectedIcon: Icon(
              Icons.event,
              color: Colors.white,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.work),
            label: 'Projects',
            selectedIcon: Icon(
              Icons.work,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
