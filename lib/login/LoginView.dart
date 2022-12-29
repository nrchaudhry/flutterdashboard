import 'dart:math';

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _loginviewState createState() => _loginviewState();
}

class _loginviewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: <Widget>[
        Container(
          width: 250,
          height: 150,
          child: const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: Image(
              width: 50,
              height: 30,
              image: AssetImage('assets/images/logo1.png'),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: 320,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(250, 167, 204, 0),
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Forgot Password?"),
            SizedBox(
              height: 10,
            ),
            Text("Don,t have an account!"),
            SizedBox(
              height: 10,
            ),
            Text(
              "Register Now!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Stack(children: <Widget>[
          Container(
              width: 500,
              height: 400,
              child: Transform.rotate(
                angle: -30 * pi / 180,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: ColorFiltered(
                        colorFilter: ColorFilter.mode(
                          Color.fromARGB(255, 6, 96, 1).withOpacity(0.7),
                          BlendMode.srcATop,
                        ),
                        child: Opacity(
                          opacity: 0.4,
                          child: Image.asset(
                            'assets/images/Rectangle8.jpeg',
                            fit: BoxFit.fitHeight,
                          ),
                        ))),
              )),
          const Padding(
            padding: EdgeInsets.only(left: 60, top: 50, right: 60),
            child: Text(
              ' "Login into self love and logout into someone else love otherwise you will forget your password of Happiness"\t\t\t\n\nMa Deuce',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 130, top: 170, right: 40),
            child: Image(
              width: 100,
              height: 50,
              image: AssetImage('assets/images/logow.png'),
            ),
          ),
        ])
      ],
    ));
  }

}