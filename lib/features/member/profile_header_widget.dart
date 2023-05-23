import 'package:flutter/material.dart';
import 'package:flutterdashboard/config/setting.dart';
import 'package:flutterdashboard/config/theme.dart';

Widget profileHeaderWidget(BuildContext context) {
  return Container(
    width: double.infinity,
    decoration: const BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff74EDED),
                  backgroundImage: AssetImage("assets/imgs/qamar/n.png")),
              Row(
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "20",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        "Posts",
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 0.4,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "1.5M",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        "Followers",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "284",
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "Following",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          letterSpacing: 0.4,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "NR chuadhry",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 16,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          const Text(
            "User Name OR Bio",
            style: TextStyle(
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          actions(context),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 85,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: highlightItems.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage(highlightItems[index].thumbnail),
                              radius: 28,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            highlightItems[index].title,
                            style: const TextStyle(fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}

Widget actions(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: sPlash2,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              //minimumSize: Size(0, 30),
              // ignore: prefer_const_constructors
              side: BorderSide(
                color: const Color.fromARGB(255, 201, 199, 199),
              )),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Text("Edit Profile", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    ],
  );
}
