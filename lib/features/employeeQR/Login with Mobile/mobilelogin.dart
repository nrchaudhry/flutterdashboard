import 'package:flutter/material.dart';
import '../OTP Screen/otp_screen.dart';

class MobileLogin extends StatefulWidget {
  @override
  _MobileLoginState createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
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
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 19.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 19.0),
                          Text(
                            'Hello, nice to meet you!',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Most comfort journey for you.',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Text(
                            'Enter Your Mobile Number',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            children: [
                              Container(
                                width: 45.0,
                                height: 45.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFEDEFEE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 5.0),
                                  child: Image.asset(
                                    'assets/imgs/employeeQR_images/images/pakistan_flag.png',
                                    width: 200,
                                    height: 200,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: Container(
                                    width: 260.0,
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
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: '+92 300 0000 000',
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 23.0),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Handle login button press
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                (OTPScreen())),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF31A563),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      minimumSize: Size(288.0, 50.0),
                                    ),
                                    child: Text(
                                      'Send Code',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10.0),
                            child: TextButton(
                              onPressed: () {
                                // Handle forgot password button press
                              },
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: Text(
                                    'Signup Instead!',
                                    style: TextStyle(
                                      color: Color(0x77000000),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
