import 'package:flutter/material.dart';
import 'signup_screen.dart';
import '../Dashboard/main_dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 84),
              child: Image.asset(
                'images/SMS_3.png',
                height: 70,
                width: 70,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60, left: 13),
              child: const Center(
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Color(0xFF0071C5),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Center(
                child: Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Color(0xFFA6A6A6),
                    fontFamily: 'Lato',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    color: Color(0xFFA6A6A6),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFA6A6A6),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    color: Color(0xFFA6A6A6),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    child: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(0xFFA6A6A6),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFA6A6A6),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 30),
              child: GestureDetector(
                onTap: () {
                  // add your code for forgot password
                },
                child: Text(
                  'Forgot Password!',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 14,
                    color: Color(0xFFA6A6A6),
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 315,
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF667EEA), Color(0xFF64B6FF)],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: MaterialButton(
                onPressed: () {
                  // add your code for login button functionality
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DashboardScreen()),
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
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(
                        color: Color(0xFFA6A6A6),
                        thickness: 1,
                      ),
                    ),
                  ),
                  Text(
                    'or log in with',
                    style: TextStyle(
                      color: Color(0xFFA6A6A6),
                      fontFamily: 'Lato',
                      fontSize: 17,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(
                        color: Color(0xFFA6A6A6),
                        thickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 74),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF0D47A1),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            // add your code for Google login
                          },
                          // SvgPicture.asset('images/.svg'),
                          icon: Image.asset(
                              'assets/imgs/healthcare_images/images/icon_google.png'),
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF0D47A1),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            // add your code for Facebook login
                          },
                          icon: Image.asset('images/icon_facebook.png'),
                        ),
                      ),
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF0D47A1),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {
                            // add your code for Apple login
                          },
                          icon: Image.asset('images/icon_apple.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up here",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
