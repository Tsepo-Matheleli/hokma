import 'package:flutter/material.dart';
import 'package:hokma/src/layout_structure/content_view.dart';
import 'package:hokma/src/layout_structure/custom_tab_view.dart';
import 'package:hokma/src/pages/about_us.dart';
import 'package:hokma/src/pages/contact.dart';
import 'package:hokma/src/pages/homepage.dart';

import '../layout_structure/desktop_view.dart';
import '../layout_structure/mobile_view.dart';
import '../utilities/colors.dart';
// import '../utilities/colors.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage>
    with SingleTickerProviderStateMixin {
  List<ContentView> contentViews = [
    ContentView(
        tab: const CustomTab(
          title: "Welcome",
        ),
        content: homepage()),
    ContentView(
        tab: const CustomTab(
          title: "About Us",
        ),
        content: aboutUs()),
    ContentView(
        tab: const CustomTab(
          title: "Contact",
        ),
        content: contact())
  ];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        // appBar: AppBar(
        //   title: Text(widget.title,
        //       style: const TextStyle(color: AppColors.backgroundColor)),
        //   backgroundColor: AppColors.primaryColor,
        //   toolbarHeight: 100,
        // ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 715) {
              return desktopView(
                  tabController, contentViews.map((e) => e.tab).toList());
            } else {
              return mobileView(
                  tabController, contentViews.map((e) => e.tab).toList());
            }
          },
        ));
  }
}
