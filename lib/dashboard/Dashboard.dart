import 'package:flutter/material.dart';
import 'package:flutterdashboard/header/HeaderView.dart';
import 'package:flutterdashboard/login/LoginView.dart';
import 'package:flutterdashboard/navigationbar/NavigationBarAtLoginView.dart';
import 'package:flutterdashboard/theme.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: sPlash2,
        appBar: AppBar(
          //    automaticallyImplyLeading: false,
          backgroundColor: sPlash2,
          title: const Center(child: Text('DashboardView')),
        ),
        drawer: HeaderView(),
        body: Column(
          children: [
            const Center(
                child: Text(
              'DASHBOARD',
            )),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => NavigationBarAtLoginView())));
              },
              child: const Text(
                'LOGIN',
              ),
            )),
          ],
        ));
  }
}
