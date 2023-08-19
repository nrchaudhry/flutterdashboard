import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/healthcare/Dashboard/section1_bed.dart';
import '../../Bottom Navigation/bottom_navigation_bar.dart';
import '../../AppBar/app_bar.dart';
void main() {
  runApp(
    MaterialApp(
      home: WardsSection(),
    ),
  );
}

class WardsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Container listTile(String bedNo, String patientName, String description,
        String lastCheck) {
      return Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bed',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      Text(
                        bedNo,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 29,
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .05),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      patientName,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    SizedBox(height: MediaQuery.of(context).size.height * .01),
                    Text(

                      lastCheck,
                      style: TextStyle(color: Colors.green),
                    ),
                  ]),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: TopAppBar(title: 'home',),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Center(
                  child: Text(
                    'Wards',
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xFF0071C5),
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  'This section displays the list of allocated bed and corresponding patient\'s medical record for each doctor, allowing them to monitor easily.',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF8D8D8D),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              // Search Form Container
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            fontFamily: 'Lato',
                            fontSize: 14,
                            color: Color(0xFFA6A6A6),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xFF0071C5),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SectionBed()),
            );},
                child: listTile("03", "Sarim", "sarim us a dsdf ", "Last Check: 2:05 am")),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SectionBed()),
            );},
                child: listTile("03", "Asif", "Asif us a dsdf ", "Last Check: 2:05 am")),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SectionBed()),
            );},
                child: listTile("03", "Bilal", "Bilal is a dsdf ", "Last Check: 2:05 am"))
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}