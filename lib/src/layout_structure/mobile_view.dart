import 'package:flutter/material.dart';
import '../navigation/custom_tab_bar.dart';

Widget mobileView(tabcontroller, pages) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/wave1_animated (1) 1.png"),
        // co
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(controller: tabcontroller, tabs: pages),
        Container()
      ],
    ),
  );
}
