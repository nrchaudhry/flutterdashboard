import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'Campus.dart';

class CampusList extends StatelessWidget {
  const CampusList({super.key, required this.campuses});

  final List<Campus> campuses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
             child: SingleChildScrollView(
        child: Column(
          children: [for (var campus in campuses) 
          //Text(i.authorDETAIL.authordisplayNAME)]
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReadMoreText(
                          campus.campusNAME,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          trimLength: 2,
                          textDirection: TextDirection.ltr,
                          // moreStyle: TextStyle(color: Colors.teal),
                          // colorClickableText: Colors.red,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      //Image(image: NetworkImage(campus.campusDESCRIPTION))
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                  color: Colors.black26,
                ),
                const Divider(
                  thickness: 8,
                  color: Colors.black26,
                ),
              ]
            ),
          ),
        ]),
      ),
      ),
    );
  }
}
