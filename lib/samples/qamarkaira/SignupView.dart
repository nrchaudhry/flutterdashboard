import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarLogin.dart';
import 'package:flutterdashboard/theme.dart';
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
  bool hideconfirmpassword = true;
  String contrycode = '';
  @override
  void initState() {
    super.initState();
    hidepassword = true;
    hideconfirmpassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: sPlash2,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40))),
                      child: const Center(
                          child: Text(
                        'Become a Member',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(
                      height: 200,
                      width: 200,
                      image: AssetImage('assets/imgs/qamar/k.png')),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                hintText: 'First Name',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0xff323F4B),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffE4E7EB)),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                                hintText: 'Last Name',
                                fillColor: const Color(0xffF8F9FA),
                                filled: true,
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Color(0xff323F4B),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Color(0xffE4E7EB)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Color(0xffE4E7EB)),
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Phone',
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          suffixIcon: TextButton(
                              onPressed: () {
                                showCountryPicker(
                                    favorite: ['pk', 'af', 'in'],
                                    countryListTheme: CountryListThemeData(
                                        // inputDecoration: const InputDecoration(
                                        //     // labelText: 'search for country',
                                        //     ),
                                        borderRadius: BorderRadius.circular(2),
                                        flagSize: 20),
                                    context: context,
                                    onSelect: (Country value) {
                                      contrycode = value.phoneCode.toString();
                                      setState(() {});
                                    });
                              },
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: black,
                              )),
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Color(0xff323F4B),
                          ),
                          //   suffixStyle: TextStyle(color: sPlash2),
                          prefixText: '+$contrycode '.toString(),
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'CNIC',
                          fillColor: const Color(0xffF8F9FA),
                          filled: true,
                          prefixIcon: const Icon(
                            Icons.perm_identity,
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
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
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: hidepassword,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: InkWell(
                            onTap: (() {
                              setState(() {
                                hidepassword = !hidepassword;
                              });
                            }),
                            child: Icon(
                              hidepassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: hidepassword ? black : sPlash2,
                            ),
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
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: hideconfirmpassword,
                      decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          labelStyle: TextStyle(color: Colors.black),
                          suffixIcon: InkWell(
                            onTap: (() {
                              setState(() {
                                hideconfirmpassword = !hideconfirmpassword;
                              });
                            }),
                            child: Icon(
                              hideconfirmpassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: hideconfirmpassword ? black : sPlash2,
                            ),
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
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    //decoration: BoxDecoration(color: Colors.red),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFda3218))),
                      onPressed: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: (TextStyle(
                            fontSize: 16,
                            color: black,
                            fontWeight: FontWeight.bold)),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => bottombarlogin()));
                          },
                          child: Text(
                            'Log In',
                            style: (TextStyle(
                                fontSize: 16,
                                color: sPlash2,
                                fontWeight: FontWeight.bold)),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
