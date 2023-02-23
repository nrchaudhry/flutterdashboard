import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBar.dart';
import 'package:flutterdashboard/samples/qamarkaira/DashViewView.dart';

class mydrawer extends StatefulWidget {
  const mydrawer({super.key});

  @override
  State<mydrawer> createState() => _DrawerState();
}

class _DrawerState extends State<mydrawer> {
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
                  MaterialPageRoute(builder: (context) => const bottombar()));
            },
            child: const ListTile(
              leading: Icon(Icons.home),
              title: Text('DASHBOARD'),
            ),
          ),
        ],
      ),

      //},
    );
    //);
  }
}
