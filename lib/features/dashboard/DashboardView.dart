import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/header/HeaderView.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

// ignore: camel_case_types
class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Dashboard - $headerTitle',
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
      drawer: const HeaderView(),
      body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('imgs/uog/uog.png'),
                    fit: BoxFit.fill)),
          ),
        ]),
      ),
    );
  }
}
