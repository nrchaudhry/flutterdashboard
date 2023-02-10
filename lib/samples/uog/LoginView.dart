import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore: depend_on_referenced_packages
//import 'package:LoginView_userinterface/signup.dart';
//import 'package:login_userinterface/signup.dart';
import 'package:flutterdashboard/dashboard/DashboardView.dart';

import 'package:flutterdashboard/login/LoginService.dart';
import 'SignupView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool hiddenpassword = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                      //      height: 200,
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
                        "Universiy \nOf Gujrat",
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
                  controller: emailController,
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
                  controller: passwordController,
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
                height: 15,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff323F4B),
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () async {
                  if (emailController.text.toString() == "") {
                    showAlertDialog(context, "Login", "Enter User Name!");

                    const snackBar = SnackBar(
                      content: Text('Enter User Name!'),
                      backgroundColor: (Color(0xffF9703B)),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else if (passwordController.text.toString() == "") {
                    const snackBar = SnackBar(
                      content: Text('Enter Password!'),
                      backgroundColor: (Color(0xffF9703B)),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    var response = await LoginService.login(
                        emailController.text.toString(),
                        passwordController.text.toString());
                    if (response == true) {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => const DashboardView()));
                    } else {
                      showAlertDialog(
                          context, "Login", "Invalid User Name/Password!");
                    }
                  }
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF9703B)),
                  child: const Center(
                      child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                ),
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
                                builder: (context) => const signup()));
                      },
                      child: const Text(
                        'Sign Up',
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
      hiddenpassword = !hiddenpassword;
    });
  }
}

showAlertDialog(BuildContext context, String title, String message) {
  // Create button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(title),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
