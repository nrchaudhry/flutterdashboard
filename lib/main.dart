import 'package:flutter/material.dart';
//import 'package:flutterdashboard/samples/qamarkaira/SplashScreenView.dart';

import 'package:flutterdashboard/samples/uog/SplashScreenView.dart';
//import 'package:flutterdashboard/samples/cwiztech/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const SplashScreenView(),
    );
  }
}
