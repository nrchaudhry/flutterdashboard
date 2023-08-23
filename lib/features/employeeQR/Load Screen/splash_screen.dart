import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/employeeQR/Login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToLoginScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: navigateToLoginScreen,
        child: Stack(
          // Use a Stack to layer the background image and logo on top of each other
          fit: StackFit.expand, // Expand the stack to fill the entire screen
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/imgs/employeeQR_images/images/load_screen.png'), // Path to your background image asset
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/imgs/employeeQR_images/images/logo.png',
                height: 300,
                width: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
