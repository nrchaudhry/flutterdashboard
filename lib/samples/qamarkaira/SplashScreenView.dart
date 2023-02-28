import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/theme.dart';
//import 'package:login_userinterface/login.dart';

import 'LoginView.dart';

class SplashScreenViewpolitics extends StatefulWidget {
  const SplashScreenViewpolitics({super.key});

  @override
  State<SplashScreenViewpolitics> createState() =>
      _SplashScreenViewpoliticsState();
}

// ignore: camel_case_types
class _SplashScreenViewpoliticsState extends State<SplashScreenViewpolitics> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), (() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const bottombarlogin()));
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
}
