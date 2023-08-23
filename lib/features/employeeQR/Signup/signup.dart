import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.black12,
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
                    height: 400.0,
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
                          SizedBox(height: 24.0),
                          const Text(
                            'Enter Your Name',
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
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEDEFEE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: Container(
                                    width: 260.0,
                                    height: 45.0,
                                    decoration: const BoxDecoration(
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
                                          hintText: 'Name',
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
                          SizedBox(height: 24.0),
                          const Text(
                            'Enter Your Email',
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
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEDEFEE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: Container(
                                    width: 260.0,
                                    height: 45.0,
                                    decoration: const BoxDecoration(
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
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 24.0),
                          const Text(
                            'Enter Your Password',
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
                                decoration: const BoxDecoration(
                                  color: Color(0xFFEDEFEE),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(0.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(0.0),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: Container(
                                    width: 260.0,
                                    height: 45.0,
                                    decoration: const BoxDecoration(
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
                                          hintText: 'password',
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
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>
                                      //           (MainScreen())),
                                      // );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF956CE6),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                      ),
                                      minimumSize: Size(288.0, 50.0),
                                    ),
                                    child: Text(
                                      'Signup',
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
