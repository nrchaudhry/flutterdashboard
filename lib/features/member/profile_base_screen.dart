import 'package:flutter/material.dart';
import 'package:flutterdashboard/config/theme.dart';
import 'package:flutterdashboard/features/member/profile_header_widget.dart';
import 'package:flutterdashboard/features/member/reels_screen.dart';
import 'package:flutterdashboard/features/header/HeaderView.dart';
import 'gallery_screen.dart';
import 'igtv_screen.dart';

class ProfileBaseScreen extends StatefulWidget {
  const ProfileBaseScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sPlash2,

        // ignore: prefer_const_constructors
        title: Center(
          child: const Text(
            "Kaira Group Profile",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        // actions: [
        // IconButton(
        //   // ignore: prefer_const_constructors
        //   icon: Icon(
        //     Icons.add_box_outlined,
        //     color: Colors.black,
        //   ),
        //   onPressed: () => {print("Add")},
        // ),
        // IconButton(
        //   // ignore: prefer_const_constructors
        //   icon: Icon(
        //     Icons.menu,
        //     color: Colors.black,
        //   ),
        //   onPressed: () => {print("Setings")},
        // )
        // ],
      ),
      //  drawer: HeaderView(),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              Material(
                color: Colors.white,
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                  indicatorWeight: 1,
                  indicatorColor: Colors.black,
                  tabs: [
                    // ignore: prefer_const_constructors
                    Tab(
                      icon: const Icon(
                        Icons.grid_on_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/igtv.png',
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Tab(
                      icon: Image.asset(
                        'assets/icons/reels.png',
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [Gallery(), Igtv(), real()],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
