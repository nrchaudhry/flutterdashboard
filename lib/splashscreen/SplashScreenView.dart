// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/navigationbar/atlogin/NavigationBarAtLoginView.dart';
import 'package:flutterdashboard/mainscreen.dart';

import 'package:flutterdashboard/login/Login.dart';
import 'package:flutterdashboard/login/LoginService.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

// ignore: camel_case_types
class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() async {
    var response = await getToken();
    Timer(const Duration(seconds: 1), (() {
      if (Login.applicationID == 0) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const NavigationBarAtLoginView()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const MainScreen(currentIndex: 1)));
      }
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: sPlash2,
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imgs/uog/uog.png'), fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }

  getToken() async {
    var response = await LoginService.login('uog', 'UOG123');
  }
}
