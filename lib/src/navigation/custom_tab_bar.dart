import 'package:flutter/material.dart';
import 'package:hokma/src/utilities/colors.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({Key? key, required this.controller, required this.tabs})
      : super(key: key);

  final TabController controller;
  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: screenheight * 0.01,
        horizontal: screenwidth * 0.03,
      ),
      width: screenwidth,
      height: screenheight * .2,
      color: AppColors.primaryColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 4,
            child: TabBar(
              indicatorColor: Colors.transparent,
              labelColor: AppColors.selectedButtonTextColor,
              indicator: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              unselectedLabelColor: AppColors.buttonTextColor,
              controller: controller,
              tabs: tabs,
            ),
          ),
          Expanded(
            child: Container(),
            flex: 5,
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 100,
              width: 70,
              child: Image.asset("assets/images/HOKMA INSTITUTE-1 2icon.png",
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
