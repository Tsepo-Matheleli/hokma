// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:hokma/src/utilities/colors.dart';

Widget contact() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: const [
      Text(
        "Contact",
        style: TextStyle(
          fontSize: 18,
          color: AppColors.buttonTextColor,
        ),
      ),
    ],
  );
}
