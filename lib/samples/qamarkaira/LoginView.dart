import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: depend_on_referenced_packages
//import 'package:loginsecreen_userinterface/signup.dart';
//import 'package:login_userinterface/signup.dart';

import 'SignupView.dart';

class loginsecreen extends StatefulWidget {
  const loginsecreen({super.key});

  @override
  State<loginsecreen> createState() => _loginsecreenState();
}

class _loginsecreenState extends State<loginsecreen> {
  bool hiddenpassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //      const Image(
                  //        //      height: 200,
                  //      width: 100,
                  //    image: AssetImage('assets/imgs/uog/p.jpg')),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Image(
                          height: 200,
                          width: 200,
                          image: AssetImage('assets/imgs/uog/p3.jpg')),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Welcome to Politics",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xff2D3142),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xff323F4B),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xffE4E7EB)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: hiddenpassword,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: InkWell(
                          onTap: _tooglepassword,
                          child: const Icon(Icons.visibility)),
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xff323F4B),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10)),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('Remember your password'),
              //  Checkbox(value: , onChanged: onChanged),
              Container(
                height: 50,
                width: 300,
                //decoration: BoxDecoration(color: Colors.red),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFFda3218))),
                  onPressed: () {},
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff323F4B),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: (TextStyle(fontSize: 16, color: Color(0xff4C5980))),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const signup()));
                      },
                      child: const Text(
                        'Sign Up',
                        style:
                            (TextStyle(fontSize: 16, color: Color(0xFFda3218))),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void _tooglepassword() {
    setState(() {
      hiddenpassword = !hiddenpassword;
    });
  }
}
