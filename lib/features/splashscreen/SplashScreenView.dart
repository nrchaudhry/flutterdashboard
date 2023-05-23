import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/features/navigationbar/NavigationBarAtLoginView.dart';

import '../../login/LoginService.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

// ignore: camel_case_types
class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    getToken();
    Timer(const Duration(seconds: 1), (() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const NavigationBarAtLoginView()));
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
                    image: AssetImage('assets/imgs/qamar/k.png'),
                    fit: BoxFit.fill)),
          ),
        ),
      ),
    );
  }

  getToken() async {
    var response = await LoginService.login('uog', 'UOG123');
  }
}
