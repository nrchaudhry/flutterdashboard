import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarDashboard.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';

class drawerlogin extends StatefulWidget {
  const drawerlogin({super.key});

  @override
  State<drawerlogin> createState() => _DrawerState();
}

class _DrawerState extends State<drawerlogin> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      //   child: ListView.builder(
      // itemCount: 5,
      // itemBuilder: (context, index) {
      //   return
      child: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const bottombardashboard()));
            },
            child: const ListTile(
              leading: Icon(Icons.home),
              title: Text('DASHBOARD'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.account_box),
              title: Text('Account'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.history),
              title: Text('History'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ),
        ],
      ),

      //},
    );
    //);
  }
}
