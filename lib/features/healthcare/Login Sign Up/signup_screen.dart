import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: SignUpScreen(),
    ),
  );
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpScreen> {
  bool _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            SizedBox(height: 50),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 65),
              child: Image.asset(
                'assets/imgs/healthcare_images/images/SMS_3.png',
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0071C5),
              ),
            ),
            SizedBox(height: 15),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 14,
                              color: Color(0xFFA6A6A6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: Color(0xFFA6A6A6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Medical License Number',
                        labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: Color(0xFFA6A6A6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 15),
                  //   child: TextFormField(
                  //     decoration: InputDecoration(
                  //       labelText: 'Hospital affiliation',
                  //       labelStyle: TextStyle(
                  //         fontFamily: 'Lato',
                  //         fontSize: 14,
                  //         color: Color(0xFFA6A6A6),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        labelText: 'Hospital affiliation',
                        labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: Color(0xFFA6A6A6),
                        ),
                      ),
                      items: [
                        DropdownMenuItem(
                          child: Text('Institute of Cardiology'),
                          value: 'Hospital A',
                        ),
                      ],
                      onChanged: (value) {
                        // Handle hospital selection
                      },
                    ),
                  ),

                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Contact Number',
                        labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
                          color: Color(0xFFA6A6A6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 14,
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
                      ),
                    ),
                  ),

                  SizedBox(height: 35),
                  //Buuton Code

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
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Already have an account?",
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
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
