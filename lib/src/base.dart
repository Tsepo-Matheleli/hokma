import 'package:flutter/material.dart';
import 'about.dart';
import 'app_colors.dart';
import 'contact_us.dart';
import 'home.dart';

class Base extends StatefulWidget {
  const Base({Key? key, title}) : super(key: key);

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Material(
              elevation: 20,
              shadowColor: Colors.black45,
              child: Container(
                height: screenHeight * .2,
                color: AppColors.primaryColor,
              ),
            ),
            Container(
              height: screenHeight * .8,
              child: ListView(
                children: const [
                  Home(),
                  About(),
                  Contact(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
