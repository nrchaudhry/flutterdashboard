import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import '../Dashboard/main_dashboard.dart';
import '../Bottom Navigation/Doctor Profile/doctor_profile.dart';


class BottomNavigationBarWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
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
    setState(() {
      _currentIndex = index;
      switch (_currentIndex) {
        case 0:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DashboardScreen()),
          );
          break;
        case 1:
          QuickAlert.show(
              context: context,
              type: QuickAlertType.warning,
              confirmBtnText: 'Bed # 01',
               text: 'Analyze the live reports and \n reach at first priority',
              title: 'Emergency Ward');
              
          break;
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DoctorProfileScreen()),
          );
          break;
      }
    });
  }
}
