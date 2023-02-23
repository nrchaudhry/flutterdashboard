import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/theme.dart';

// ignore: camel_case_types
class roundbuttons extends StatelessWidget {
  final String title;
  final String color;

  const roundbuttons({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Container(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(sPlash2)),
                onPressed: () {},
                child: Text(title))),
      )),
    ]);
  }
}

class forinputfield extends StatelessWidget {
  final String title;
  const forinputfield({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Enter Name', labelText: 'Enter Name'),
          ),
        )
      ],
    );
  }
}
