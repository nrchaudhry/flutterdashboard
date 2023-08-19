import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/healthcare/AppBar/app_bar.dart';


class SectionBed extends StatefulWidget {
  const SectionBed({super.key});

  @override
  State<SectionBed> createState() => _SectionBedState();
}

class _SectionBedState extends State<SectionBed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopAppBar(title: 'title'),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Pulse',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text('By time of the day \n02 sec ago')
                    ],
                  ),
                  Spacer(),
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.grey,
                      child: Icon(Icons.arrow_downward)),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.add)),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 220,
              margin: EdgeInsets.only(left: 30),
              child: LineChart(
                LineChartData(
                    titlesData: const FlTitlesData(
                        rightTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        topTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(showTitles: false))),
                    maxX: 0,
                    minX: 100,
                    minY: 40,
                    maxY: 100,
                    lineBarsData: [
                      LineChartBarData(
                          spots: [
                            FlSpot(10, 80),
                            FlSpot(20, 80),
                            FlSpot(30, 67),
                            FlSpot(40, 65),
                            FlSpot(50, 75),
                            FlSpot(60, 85),
                            FlSpot(70, 67),
                            FlSpot(80, 75),
                            FlSpot(90, 70),
                            FlSpot(100, 80),
                          ],
                          dotData: FlDotData(show: false),
                          isCurved: true,
                          gradient: const LinearGradient(
                              colors: [Colors.amber, Colors.amberAccent])),
                      LineChartBarData(
                          spots: [
                            FlSpot(10, 80),
                            FlSpot(20, 70),
                            FlSpot(30, 87),
                            FlSpot(40, 65),
                            FlSpot(50, 75),
                            FlSpot(60, 65),
                            FlSpot(70, 77),
                            FlSpot(80, 65),
                            FlSpot(90, 70),
                            FlSpot(100, 80),
                          ],
                          dotData: FlDotData(show: false),
                          isCurved: true,
                          gradient: const LinearGradient(
                              colors: [Colors.blue, Colors.blue])),
                      LineChartBarData(
                          spots: [
                            FlSpot(10, 80),
                            FlSpot(20, 80),
                            FlSpot(30, 70),
                            FlSpot(40, 85),
                            FlSpot(50, 70),
                            FlSpot(60, 75),
                            FlSpot(70, 67),
                            FlSpot(80, 65),
                            FlSpot(90, 80),
                            FlSpot(100, 80),
                          ],
                          dotData: FlDotData(show: false),
                          isCurved: true,
                          gradient: const LinearGradient(
                              colors: [Colors.red, Colors.deepOrange]))
                    ],
                    borderData: FlBorderData(
                      show: false,
                      border: Border(top: BorderSide.none),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.favorite)),
                  SizedBox(
                    width: 15,
                  ),
                  const Column(
                    children: [
                      Text(
                        "pulse",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        '78 bpm',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 230,
                    height: 10,
                    child: LineChart(
                      LineChartData(
                          titlesData: const FlTitlesData(
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false))),
                          maxX: 0,
                          minX: 100,
                          minY: 40,
                          maxY: 100,
                          lineBarsData: [
                            LineChartBarData(
                                spots: [
                                  FlSpot(10, 80),
                                  FlSpot(20, 80),
                                  FlSpot(30, 0),
                                  FlSpot(40, 99),
                                  FlSpot(50, 70),
                                  FlSpot(60, 100),
                                  FlSpot(70, 67),
                                  FlSpot(80, 5),
                                  FlSpot(90, 90),
                                  FlSpot(100, 80),
                                ],
                                dotData: FlDotData(show: false),
                                isCurved: true,
                                gradient: const LinearGradient(
                                    colors: [Colors.red, Colors.deepOrange]))
                          ],
                          borderData: FlBorderData(
                            show: false,
                            border: Border(top: BorderSide.none),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.circle)),
                  SizedBox(
                    width: 15,
                  ),
                  const Column(
                    children: [
                      Text(
                        "pressure",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        '78 bp',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 200,
                    height: 10,
                    child: LineChart(
                      LineChartData(
                          titlesData: const FlTitlesData(
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false))),
                          maxX: 0,
                          minX: 100,
                          minY: 40,
                          maxY: 100,
                          lineBarsData: [
                            LineChartBarData(
                                spots: [
                                  FlSpot(10, 80),
                                  FlSpot(20, 80),
                                  FlSpot(30, 0),
                                  FlSpot(40, 8),
                                  FlSpot(50, 70),
                                  FlSpot(60, 100),
                                  FlSpot(70, 67),
                                  FlSpot(80, 70),
                                  FlSpot(90, 100),
                                  FlSpot(100, 80),
                                ],
                                dotData: FlDotData(show: false),
                                isCurved: true,
                                gradient: const LinearGradient(
                                    colors: [Colors.amber, Colors.amberAccent]))
                          ],
                          borderData: FlBorderData(
                            show: false,
                            border: Border(top: BorderSide.none),
                          )),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.thermostat)),
                  SizedBox(
                    width: 15,
                  ),
                  const Column(
                    children: [
                      Text(
                        "02",
                        style: TextStyle(fontSize: 19),
                      ),
                      Text(
                        '324',
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 250,
                    height: 10,
                    child: LineChart(
                      LineChartData(
                          titlesData: const FlTitlesData(
                              rightTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              topTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              leftTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false)),
                              bottomTitles: AxisTitles(
                                  sideTitles: SideTitles(showTitles: false))),
                          maxX: 0,
                          minX: 100,
                          minY: 40,
                          maxY: 100,
                          lineBarsData: [
                            LineChartBarData(
                                spots: [
                                  FlSpot(10, 10),
                                  FlSpot(20, 40),
                                  FlSpot(30, 0),
                                  FlSpot(40, 80),
                                  FlSpot(50, 70),
                                  FlSpot(60, 100),
                                  FlSpot(70, 67),
                                  FlSpot(80, 70),
                                  FlSpot(90, 100),
                                  FlSpot(100, 0),
                                ],
                                dotData: FlDotData(show: false),
                                isCurved: true,
                                gradient: const LinearGradient(
                                    colors: [Colors.blue, Colors.blue]))
                          ],
                          borderData: FlBorderData(
                            show: false,
                            border: Border(top: BorderSide.none),
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Mo'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Tu'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('we'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Th'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Fr'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Sa'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10,
                            offset: Offset(0, 9),
                            spreadRadius: 2)
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Center(
                    child: Text('Su'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ));
  }
}
