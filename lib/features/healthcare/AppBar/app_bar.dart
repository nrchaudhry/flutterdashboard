import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;

  const TopAppBar({
    Key? key,
    required this.title,
    this.showBackButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, // Set the desired height
      child: AppBar(
        backgroundColor: Colors.white,
        leading: showBackButton
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF0071C5),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            : null,
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(right: 35),
            child: Image.asset(
              'assets/imgs/healthcare_images/images/SMS_3.png',
              height: 45,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200); // Set the preferred height
}
