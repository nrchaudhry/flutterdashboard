import 'package:flutter/material.dart';
import 'package:flutterdashboard/login/LoginView.dart';
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
        backgroundColor: sPlash2,
        appBar: AppBar(
          backgroundColor: sPlash2,
          title: const Text('DashboardView'),
        ),
        body: Column(
          children: [
            const Center(
                child: Text(
              'DASHBOARD',
              style: TextStyle(color: Colors.white),
            )),
            Center(
                child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LoginView())));
              },
              child: const Text(
                'LOGIN',
                style: TextStyle(color: Colors.white),
              ),
            )),
          ],
        ));
  }
}
