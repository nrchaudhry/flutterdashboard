import 'dart:convert';

import 'package:flutter/material.dart';

class DepartmentScreen extends StatefulWidget {
  final departmentData;

  DepartmentScreen({super.key, this.departmentData});

  @override
  State<DepartmentScreen> createState() => _DepartmentScreenState();
}

class _DepartmentScreenState extends State<DepartmentScreen> {
  List<dynamic> finaldata = [];
  List<bool> dropdownbool = [];

  @override
  void initState() {
    listData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.departmentData;

    final departmentName =
        data["department1"][0]["departmentname"] ?? "NotAvaliable";

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("${departmentName ?? ""}")),
      body: ListView.builder(
          itemCount: finaldata.length,
          itemBuilder: (context, index) {
            var Listdata = finaldata;
            var sectionName = Listdata[index]["sectionname"] ?? "NotAvaliable";
            var floor = Listdata[index]["data"][0]["floor"] ?? "NotAvaliable";
            var adminRoom = Listdata[index]["data"][0]["admin"] ?? "NotAvaliable";
            var classRoom = Listdata[index]["data"][0]["classroomnumber"] ?? "NotAvaliable";
            return Column(children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(10))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          "${sectionName}",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Text(
                        "(${floor})",
                        style: TextStyle(fontSize: 10),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              dropdownbool[index] = !dropdownbool[index];
                            });
                          },
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(dropdownbool[index]==false?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Visibility(
                visible: dropdownbool[index],
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(alignment: Alignment.centerLeft,child: Text("Admin Room: ${adminRoom}")),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Align(alignment: Alignment.centerLeft,child: Text("Class Room: ${classRoom}")),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]);
          }),
    );
  }

  List<dynamic> listData() {
    var listofdepartments = widget.departmentData["department1"];
    for (var data in listofdepartments) {
      for (var data2 in data["data1"]) {
        finaldata.add(data2);
        dropdownbool.add(false);
      }
    }
    return finaldata;
  }
}
