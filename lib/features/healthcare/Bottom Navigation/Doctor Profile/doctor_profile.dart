import 'package:flutter/material.dart';
import '../bottom_navigation_bar.dart';
import '../../AppBar/app_bar.dart';

void main() {
  runApp(
    MaterialApp(
      home: DoctorProfileScreen(),
    ),
  );
}

class DoctorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(
        title: 'Home',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  'Doctor Profile',
                  style: TextStyle(
                    color: Color(0xFF0071C5),
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.bold,
                    fontSize: 27,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 54),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        //color: Colors.blue,
                        image: const DecorationImage(
                          image: AssetImage('images/image_profile.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dr. Rahmat Ullah',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '+92 300 0000000',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 12),
                  Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Container(
                      width: 52,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0x0D47A1).withOpacity(0.08),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF4CAF50),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 250),
                  child: Text(
                    style: TextStyle(
                        color: Color(0xff667eea),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    'My Profile',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 260),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('About',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 25, right: 240),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Services',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 25, right: 238),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Favorite',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.only(top: 25, right: 220),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.event_available_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Avalibility',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                          
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 250),
                  child: Text(
                    style: TextStyle(
                        color: Color(0xff667eea),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    'More',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 260),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chat_bubble_outline_outlined  ,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Help',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                          
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 230),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.rate_review_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('Rate Us',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                          
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 260),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.question_mark_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text("FAQ's",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                          
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 25, right: 238),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text('LogOut',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                          
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
