import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/dashboard/DashboardView.dart';
import 'package:flutterdashboard/features/contact/ContactView.dart';
import 'package:flutterdashboard/features/news/NewsesView.dart';
import 'package:flutterdashboard/features/event/EventView.dart';
import 'package:flutterdashboard/features/project/ProjectView.dart';

import '../member/MemberView.dart';

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
    MemberView(),
    MemberView(),
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
            icon: Icon(Icons.card_membership),
            label: 'Members',
            selectedIcon: Icon(
              Icons.wallet_membership,
              color: Colors.white,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.contacts),
            label: 'Contacts',
            selectedIcon: Icon(
              Icons.contacts,
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
