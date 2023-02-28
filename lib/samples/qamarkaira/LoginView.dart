import 'package:flutter/material.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarDashboard.dart';

import 'package:flutterdashboard/theme.dart';

import '../../login/LoginService.dart';
import '../uog/LoginView.dart';
import 'DrawerLogin.dart';
import 'SignupView.dart';

class loginsecreen extends StatefulWidget {
  const loginsecreen({super.key});

  @override
  State<loginsecreen> createState() => _loginsecreenState();
}

class _loginsecreenState extends State<loginsecreen> {
  bool hiddenpassword = true;
  bool value = false;
  @override
  void initState() {
    super.initState();
    hiddenpassword = true;
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Kaira Group',
            //  textAlign: TextAlign.right,
          ),
        ),
        backgroundColor: sPlash2,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      drawer: const drawerlogin(),
      //  backgroundColor:
      // Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
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
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Image(
                              height: 200,
                              width: 200,
                              image: AssetImage('assets/imgs/qamar/k.png')),
                        ],
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          labelStyle: TextStyle(color: black),
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Color(0xff323F4B),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xffE4E7EB)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffE4E7EB)),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: hiddenpassword,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: TextStyle(color: black),
                          suffixIcon: InkWell(
                            //onTap: _tooglepassword,
                            child: Icon(
                              hiddenpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: hiddenpassword ? black : sPlash2,
                            ),
                            onTap: () {
                              setState(() {
                                hiddenpassword = !hiddenpassword;
                              });
                            },
                          ),
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

                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      //  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Remember your password',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: black),
                        ),
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: sPlash2,
                            //checkColor: black,
                            //  autofocus: false,
                            //  focusColor: black,
                            // hoverColor: black,
                            // focusColor: black,
                            //  activeColor: Colors.white,
                            value: this.value,
                            onChanged: (value) {
                              setState(() {
                                this.value = value!;
                              });
                            })
                        //   Text('Remember your password'),
                      ],
                    ),
                  ),
                  //  Checkbox(value: , onChanged: onChanged),

                  Container(
                    height: 50,
                    width: 300,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFda3218))),
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
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) =>
                                        const bottombardashboard()));
                          } else {
                            showAlertDialog(context, "Login",
                                "Invalid User Name/Password!");
                          }
                        }
                      },
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
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                              fontSize: 16,
                              color: black,
                              fontWeight: FontWeight.bold,
                              //  decoration: TextDecoration.underline
                            ),
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
                        style: (TextStyle(
                            fontSize: 16,
                            color: Color(0xff4C5980),
                            fontWeight: FontWeight.bold)),
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
                            style: (TextStyle(
                                fontSize: 16,
                                color: Color(0xFFda3218),
                                fontWeight: FontWeight.bold)),
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // void _tooglepassword() {
  //   setState(() {
  //     hiddenpassword = !hiddenpassword;
  //   });
  // }
}
