import 'package:flutter/material.dart';
import 'package:hokma/src/navigation/custom_tab_bar.dart';

Widget desktopView(tabcontroller, pages) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/wave1_animated (1) 1.png"),
        // co
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomTabBar(
          controller: tabcontroller,
          tabs: pages,
        ),
        SizedBox(
          height: 400,
          child: TabBarView(
            controller: tabcontroller,
            children: pages,
          ),
        )
      ],
    ),
  );
}
