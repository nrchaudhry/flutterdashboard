import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';
import 'package:flutterdashboard/samples/qamarkaira/LoginView.dart';

class drawerevents extends StatefulWidget {
  const drawerevents({super.key});

  @override
  State<drawerevents> createState() => _DrawerState();
}

class _DrawerState extends State<drawerevents> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //   child: ListView.builder(
      // itemCount: 5,
      // itemBuilder: (context, index) {
      //   return
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => bottombarlogin()));
            },
            child: const ListTile(
              leading: Icon(Icons.login),
              title: Text('Login Page'),
            ),
          ),
        ],
      ),

      //},
    );
    //);
  }
}
