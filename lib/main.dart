import 'package:flutter/material.dart';

import 'src/base.dart';

// import 'package:hokma/src/pages/base_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOKMA Institute',
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const BasePage(title: 'HOKMA'),
      home: const Base(title: 'HOKMA'),
    );
  }
}
