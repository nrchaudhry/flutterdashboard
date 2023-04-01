import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutterdashboard/navigationbar/NavigationBarAtLoginView.dart';

import '../login/LoginService.dart';
import '../login/LoginView.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

// ignore: camel_case_types
class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), (() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const NavigationBarAtLoginView()));
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/imgs/uog/UOG.png'),
                    fit: BoxFit.fill)),
          ),
        ]),
      ),
    );
  }

  getToken() async {
    var response = await LoginService.login('uog', 'UOG123');
  }
}
