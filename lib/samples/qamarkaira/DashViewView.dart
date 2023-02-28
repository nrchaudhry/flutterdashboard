import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterdashboard/samples/qamarkaira/BottomNavigationBarDashboard.dart';
import 'package:flutterdashboard/samples/qamarkaira/DrawerDashboard.dart';
import 'package:flutterdashboard/samples/qamarkaira/checkbox.dart';
import 'package:flutterdashboard/theme.dart';

class DashBoardViewPolitics extends StatefulWidget {
  const DashBoardViewPolitics({super.key});

  @override
  State<DashBoardViewPolitics> createState() => _DashBoardViewPoliticsState();
}

class _DashBoardViewPoliticsState extends State<DashBoardViewPolitics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sPlash2,
        title: const Center(child: Text('DashBoard')),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        // leading: GestureDetector(
        //   child: Icon(Icons.arrow_back),
        //   onTap: (() {
        //     Navigator.pop(context);
        //   }),
        // ),
      ),
      drawer: drawerdashboard(),
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: TextFormField(
              obscuringCharacter: '~',
              obscureText: true,
              autocorrect: true,
              decoration: InputDecoration(
                labelText: 'First Name',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'First Name',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: sPlash2)),
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Last Name',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: sPlash2)),
              ),
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                labelStyle: TextStyle(color: Colors.black),
                hintText: 'Date of Birth',
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: sPlash2)),
              ),
            ),
          )),
          // InkWell(
          //     onTap: () {
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => check()));
          //     },
          //     child: Text(
          //       'data',
          //     ))
        ],
      ),
    );
  }
}
