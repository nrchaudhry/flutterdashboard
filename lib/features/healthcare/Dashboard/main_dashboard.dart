import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

import '../AppBar/app_bar.dart';
import '../Bottom Navigation/bottom_navigation_bar.dart';
import 'Section1 - Ward/section1_ward.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: TopAppBar(
        title: 'Home',
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: SizedBox(),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Text(
                        'Dashboard',
                        style: TextStyle(
                          color: Color(0xFF0071C5),
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.bold,
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
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
                  SizedBox(height: 25),
                  GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: constraints.maxWidth > 600 ? 4 : 2,
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      buildGridItem(context, 'Wards', 'Description 1', 0),
                      buildGridItem(context, 'Emergency Patients Ward',
                          'Description 2', 1),
                      buildGridItem(
                          context, 'Alert Notification', 'Description 3', 2),
                      buildGridItem(
                          context, 'Communication Center', 'Description 4', 3),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }

  Widget buildGridItem(
      BuildContext context, String title, String description, int index) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding screen based on the index
        switch (index) {
          case 0:
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WardsSection()),
            );
            break;
          case 2:
            QuickAlert.show(
                context: context,
                type: QuickAlertType.warning,
                confirmBtnText: 'Bed # 01',
                text: 'Analyze the live reports and \n reach at first priority',
                title: 'Emergency Ward');
            break;
        }
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFF0071C5),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                description,
                style: TextStyle(
                  color: Color(0xFF777777),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
