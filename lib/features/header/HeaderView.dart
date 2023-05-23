import 'package:flutter/material.dart';

import 'package:flutterdashboard/features/navigationbar/NavigationBarAtLoginView.dart';

class HeaderView extends StatefulWidget {
  const HeaderView({super.key});

  @override
  State<HeaderView> createState() => _DrawerState();
}

class _DrawerState extends State<HeaderView> {
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
              title: Text('Home'),
            ),
          ),
        ],
      ),

      //},
    );
    //);
  }
}
