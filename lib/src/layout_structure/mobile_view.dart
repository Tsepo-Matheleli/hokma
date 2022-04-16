import 'package:flutter/material.dart';
import '../navigation/custom_tab_bar.dart';

Widget mobileView(tabcontroller, pages) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      CustomTabBar(controller: tabcontroller, tabs: pages),
      Container()
    ],
  );
}
