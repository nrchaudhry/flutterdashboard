import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/employeeQR/Login%20with%20Mobile/mobilelogin.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/imgs/employeeQR_images/images/load_screen.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              // Wrap Column with SingleChildScrollView
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/imgs/employeeQR_images/images/logo.png',
                      width: 200.0,
                      height: 200.0,
                    ),
                  ),
                  Container(
                    width: 333.0,
                    height: 426.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 38.0),
                        Container(
                          width: 280.0,
                          height: 45.0,
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigation path when button is clicked
                              // Replace with your desired navigation logic
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (MobileLogin())),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF31A563),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 45.0,
                                  height: 45.0,
                                  child: const Icon(
                                    Icons.phone,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Text(
                                  'Login with mobile number',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 30.5),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Divider(
                                    color: Color(0xFF000000),
                                    thickness: 1,
                                  ),
                                ),
                              ),
                              Text(
                                'OR',
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontFamily: 'Lato',
                                  fontSize: 10,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                  child: Divider(
                                    color: Color(0xFF000000),
                                    thickness: 1,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD7DAD8),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.email,
                                  color: Colors.black.withOpacity(0.47),
                                ),
                              ),
                              //SizedBox(width: 10.0),
                              Expanded(
                                child: Container(
                                  width: 288.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEDEFEE),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Email',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD7DAD8),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Icon(
                                  Icons.lock,
                                  color: Colors.black.withOpacity(0.47),
                                ),
                              ),
                              //SizedBox(width: 10.0),
                              Expanded(
                                child: Container(
                                  width: 288.0,
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFEDEFEE),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(10.0),
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Password',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 23.0),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Handle login button press
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xFF31A563),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    minimumSize: Size(288.0, 50.0),
                                  ),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          child: TextButton(
                            onPressed: () {
                              // Handle forgot password button press
                            },
                            child: Text(
                              'Forgot your Password?',
                              style: TextStyle(
                                color: Color(0x77000000),
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
