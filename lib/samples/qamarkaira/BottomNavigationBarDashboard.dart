import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';
import 'package:flutterdashboard/samples/qamarkaira/Events.dart';
import 'package:flutterdashboard/samples/qamarkaira/Membership.dart';
import 'package:flutterdashboard/samples/qamarkaira/News.dart';
import 'package:flutterdashboard/theme.dart';

class bottombardashboard extends StatefulWidget {
  const bottombardashboard({super.key});

  @override
  State<bottombardashboard> createState() => _bottombardashboardState();
}

class _bottombardashboardState extends State<bottombardashboard> {
  int cindex = 0;
  int active = 0;
  final Screens = const [
    DashBoardViewPolitics(),
    News(),
    Events(),
    Membership()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[cindex],
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
            icon: Icon(Icons.card_membership),
            label: 'Membership',
            selectedIcon: Icon(
              Icons.card_membership,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
