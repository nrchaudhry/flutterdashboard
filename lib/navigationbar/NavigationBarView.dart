import 'package:flutter/material.dart';

import '../dashboard/Dashboard.dart';
import '../event/EventView.dart';
import '../news/NewsesView.dart';
import '../project/ProjectView.dart';
import '../theme.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key});

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  int cindex = 0;
  int active = 0;
  final screens = const [
    DashboardView(),
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
