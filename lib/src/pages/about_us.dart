import "package:flutter/material.dart";
import 'package:hokma/src/utilities/colors.dart';

Widget aboutUs() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const [
      Text(
        "About Us",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.buttonTextColor,
        ),
      ),
    ],
  );
}
