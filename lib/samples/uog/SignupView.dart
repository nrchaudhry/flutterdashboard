import 'package:flutter/material.dart';
//import 'package:login_userinterface/login.dart';

import 'LoginView.dart';
//import 'package:flutter/src/widgets/container.dart';
//import 'package:flutter/src/widgets/framework.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                      height: 100,
                      width: 100,
                      image: AssetImage('assets/imgs/uog/UOG.png')),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "University \nOf Gujrat",
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
              const Center(
                  child: Text(
                "Signup Page",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xffF9703B),
                    fontWeight: FontWeight.bold),
              )),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      hintText: 'Name',
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.person,
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
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      hintText: 'Phone',
                      fillColor: const Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: Color(0xff323F4B),
                      ),
                      //        suffixIcon: Icon(Icons.visibility_off_outlined),
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
                  obscureText: hidepassword,
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
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF9703B)),
                child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 16),
                        ))),
              ),
              const SizedBox(
                height: 15,
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
                                builder: (context) => loginsecreen()));
                      },
                      child: const Text(
                        'Log In',
                        style:
                            (TextStyle(fontSize: 16, color: Color(0xffF9703B))),
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
      hidepassword = !hidepassword;
    });
  }
}
