import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 103),
          Image.asset('assets/imgs/healthcare_images/images/blue_logo.png'),
          SizedBox(height: 100),
          Image.asset('assets/imgs/healthcare_images/images/SMS_2.png'),
          Spacer(),
          Container(
            width: 2455,
            height: 48,
            margin: EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF667EEA), Color(0xFF64B6FF)],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Log In',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 26),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUpScreen()),
              );
            },
            child: Text(
              'Sign Up',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 76),
        ],
      ),
    );
  }
}
