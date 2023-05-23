import 'package:flutter/material.dart';
import 'package:flutterdashboard/config/theme.dart';
import 'package:flutterdashboard/features/member/profile_base_screen.dart';
import 'package:flutterdashboard/features/header/HeaderView.dart';

class MemberView extends StatefulWidget {
  const MemberView({super.key});

  @override
  State<MemberView> createState() => _MemberView();
}

class _MemberView extends State<MemberView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: const Center(
            child: Text(
              'Kaira Group - Members',
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
        drawer: HeaderView(),
        body: ListView(
          itemExtent: 80,
          reverse: false,
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/n.png'),
                ),
                title: const Text("NR Chaudhry"),
                subtitle: const Text("Team Leader"),
                trailing: const Text('Gujrat'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileBaseScreen()));
                },
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            // SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/k.png'),
                ),
                title: const Text("CH Qamar"),
                subtitle: const Text("Owner"),
                trailing: const Text('Gujrat'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileBaseScreen()));
                },
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/j.png'),
                ),
                title: const Text("Jahangir"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/s.png'),
                ),
                title: const Text("Shoaib"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/u.png'),
                ),
                title: const Text("M.Usman"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/n.png'),
                ),
                title: const Text("NR Chaudhry"),
                subtitle: const Text("Team Leader"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            // SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/k.png'),
                ),
                title: const Text("CH Qamar"),
                subtitle: const Text("Owner"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/j.png'),
                ),
                title: const Text("Jahangir"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/s.png'),
                ),
                title: const Text("Shoaib"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('assets/imgs/qamar/u.png'),
                ),
                title: const Text("M.Usman"),
                subtitle: const Text("Student"),
                trailing: const Text('Gujrat'),
                onTap: () {},
                onLongPress: () {},
                tileColor: Color.fromARGB(255, 239, 233, 225),
              ),
            ),
          ],
        ));
  }
}
