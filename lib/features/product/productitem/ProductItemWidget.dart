// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutterdashboard/config/theme.dart';

Widget productItemPromoCard(BuildContext context, productitem) {
  final formKey = GlobalKey<FormState>();
  return InkWell(
    onTap: () { 
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(productitem.productitemNAME),
            content: Stack(
              clipBehavior: Clip.none, children: <Widget>[
                Positioned(
                  right: -40.0,
                  top: -40.0,
                  child: InkResponse(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(Icons.close),
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(kSecondaryColor)),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Add to Cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      );
    },
//    aspectRatio: 2.62 / 3,
    child: Container(
      width: 50,
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: Colors.orangeAccent,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(productitem.productDETAIL.producticonURL),
        ),
      ),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                productitem.productitemNAME,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 20)),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            stops: const [0.1, 0.9],
            begin: Alignment.bottomRight,
            colors: [
              const Color.fromARGB(71, 255, 255, 255).withOpacity(.8),
              const Color.fromARGB(71, 255, 255, 255).withOpacity(.1),
            ],
          ),
        ),
      ),
    ),
  );
}
