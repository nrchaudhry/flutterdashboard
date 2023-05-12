import 'package:flutter/material.dart';
import 'package:flutterdashboard/dashboard/Dashboard.dart';
import 'package:flutterdashboard/login/LoginView.dart';
import 'package:flutterdashboard/navigationbar/NavigationBarAtLoginView.dart';

import 'splashsecreen/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenView(),
    );
  }
}
