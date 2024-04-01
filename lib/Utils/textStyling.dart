import 'package:flutter/material.dart';

abstract class ThemeStyling {
  static const TextStyle welcomeTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "Product Sans", color: Colors.white);
  static const TextStyle welcomeSubTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Product Sans", color: Colors.white);

  static const TextStyle welcomeButton = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Product Sans", color: Colors.white);
  
  static const TextStyle titleAppBar = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 20, fontFamily: "Product Sans", color: Colors.black);

 static const TextStyle titleTabBar = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, fontFamily: "Product Sans Medium", color: Colors.white);
}