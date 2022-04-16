import 'package:flutter/material.dart';
import 'package:hokma/src/navigation/custom_tab_bar.dart';

Widget desktopView(tabcontroller, pages) {
  return Column(
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
  );
}
