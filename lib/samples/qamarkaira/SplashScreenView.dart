import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
          MaterialPageRoute(builder: (_) => const loginsecreen()));
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
                    image: AssetImage('assets/imgs/uog/p6.jpg'),
                    fit: BoxFit.fill)),
          ),
        ]),
      ),
    );
  }
}
