import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';
import 'package:flutterdashboard/samples/qamarkaira/LoginView.dart';

class drawernews extends StatefulWidget {
  const drawernews({super.key});

  @override
  State<drawernews> createState() => _DrawerState();
}

class _DrawerState extends State<drawernews> {
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
              leading: Icon(Icons.abc),
              title: Text('XYZ'),
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
