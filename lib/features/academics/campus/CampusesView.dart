import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/header/HeaderView.dart';

import 'CampusController.dart';
import 'Campus.dart';
import 'CampusWidget.dart';

class CampusesView extends StatefulWidget {
  const CampusesView({super.key});

  @override
  State<CampusesView> createState() => _CampusesViewState();
}

class _CampusesViewState extends State<CampusesView> {
  late Future<List<Campus>> campus;

  @override
  void initState() {
    super.initState();
    campus = CampusController.campusGet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Campus - $headerTitle',
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
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: FutureBuilder<List<Campus>>(
          future: campus,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CampusList(campuses: snapshot.data!);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
