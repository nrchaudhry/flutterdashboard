import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                    height: 250.0,
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
                            'Reset Password',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Please give email address to to reset your password',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 24.0),
                          Text(
                            'Enter your email address',
                            style: TextStyle(
                              color: Color(0xFF000000),
                              fontFamily: 'Lato',
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          //SizedBox(height: 49.0),
                          Padding(
                            padding: const EdgeInsets.only(right: 19.0),
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
                                                (ResetPassword())),
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
                                      'Submit',
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
