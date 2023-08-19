import 'package:flutter/material.dart';
import 'first_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FirstScreen()),
        );
      },
      child: Scaffold(
        backgroundColor: Color(0xFF0071C5),
        body: Center(
          child: Image.asset(
              "assets/imgs/healthcare_images/images/splash_screen.png"),
        ),
      ),
    );
  }
}
