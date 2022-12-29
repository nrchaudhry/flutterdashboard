import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  _loginviewState createState() => _loginviewState();
}

class _loginviewState extends State<LoginView> {
    @override
    Widget build(BuildContext context) {
        return SingleChildScrollView (
            child: Column (
                children: <Widget> [
            
                    const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                        width: 50,
                        height: 30,
                        image: AssetImage('assets/images/logo1.png'),
                    ),
                    ),
                    
                    const Text('Email'),
                    const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                    ),
                    ),
                    
                    const Text('Password'),
                    const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                    ),
                    )
                ],
            )
        );
    }
 
}