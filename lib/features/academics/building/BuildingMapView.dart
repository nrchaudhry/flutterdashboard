import 'package:flutter/material.dart';

import 'package:flutterdashboard/config/theme.dart';

import 'package:flutterdashboard/header/HeaderView.dart';

import 'BuildingController.dart';
import 'Building.dart';

class BuildingesView extends StatefulWidget {
  const BuildingesView({super.key});

  @override
  State<BuildingesView> createState() => _BuildingesViewState();
}

class _BuildingesViewState extends State<BuildingesView> {
  late Future<List<Building>> building;

  @override
  void initState() {
    super.initState();
    building = BuildingController.buildingGet();
  }

  @override
  Widget build(BuildContext context) {}
}
