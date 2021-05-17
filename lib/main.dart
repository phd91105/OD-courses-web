import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ongdev_courses/constaints.dart';
import 'package:ongdev_courses/home_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: secondaryBGColor,
      ),
    ),
  );
}
