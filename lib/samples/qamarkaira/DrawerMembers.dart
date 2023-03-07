import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';
import 'package:flutterdashboard/samples/qamarkaira/LoginView.dart';

class drawermembers extends StatefulWidget {
  const drawermembers({super.key});

  @override
  State<drawermembers> createState() => _DrawerState();
}

class _DrawerState extends State<drawermembers> {
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
              leading: Icon(Icons.account_balance),
              title: Text('Accounts'),
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
