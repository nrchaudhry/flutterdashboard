import 'package:flutter/material.dart';
import 'package:flutterdashboard/features/healthcare/Dashboard/Section1%20-%20Ward/section1_ward.dart';
import '../Dashboard/main_dashboard.dart';
import '../Bottom Navigation/Doctor Profile/doctor_profile.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void _onTabTapped(int index) {
    // Handle the tap event
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DashboardScreen()),
        );
        break;
      case 1:
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Emergency Ward'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Reach at first priority'),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WardsSection()),
                      );
                    },
                    child: Text('Bed # 01', style: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(height: 10),
                  Text('Patient: Sarim', style: TextStyle(fontSize: 16)),
                  // Add more details as needed
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DoctorProfileScreen()),
        );
        break;
    }
  }
}
