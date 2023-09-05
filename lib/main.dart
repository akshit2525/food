import 'package:flutter/material.dart';
import 'package:food/screen/Product_Screen.dart';
import 'package:food/screen/home_screen.dart';
import 'package:food/screens/home_Screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true) ,
      debugShowCheckedModeBanner: false,
      home: homescreen(),
    ),
  );
}