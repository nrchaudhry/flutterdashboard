import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';
import 'package:flutterdashboard/samples/qamarkaira/Events.dart';
import 'package:flutterdashboard/samples/qamarkaira/LoginView.dart';
import 'package:flutterdashboard/samples/qamarkaira/Membership.dart';
import 'package:flutterdashboard/samples/qamarkaira/News.dart';
import 'package:flutterdashboard/theme.dart';

class bottombarlogin extends StatefulWidget {
  const bottombarlogin({super.key});

  @override
  State<bottombarlogin> createState() => _bottombarloginState();
}

class _bottombarloginState extends State<bottombarlogin> {
  int cindex = 0;
  int active = 0;
  final Screens = const [
    loginsecreen(),
    News(),
    Events(),
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
        ],
      ),
    );
  }
}
