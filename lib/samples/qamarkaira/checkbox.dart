import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/theme.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Text(valuefirst ? 'Done' : 'Remember Your Password'),
          valuefirst == false
              ? Checkbox(
                  checkColor: Colors.white,
                  activeColor: sPlash2,
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                )
              : Checkbox(
                  checkColor: Colors.black,
                  activeColor: sPlash2,
                  value: valuefirst,
                  onChanged: (bool? value) {
                    setState(() {
                      valuefirst = value!;
                    });
                  },
                )
        ],
      ),
    );
  }
}
