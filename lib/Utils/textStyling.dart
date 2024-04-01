import 'package:flutter/material.dart';

abstract class ThemeStyling {
  static const TextStyle welcomeTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 25, fontFamily: "Product Sans", color: Colors.white);
  static const TextStyle welcomeSubTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Product Sans", color: Colors.white);

  static const TextStyle welcomeButton = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Product Sans", color: Colors.white); 

  static const TextStyle orderCardTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Nunito", color: Colors.white); 

  static const TextStyle orderCardSubTitle = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 12, fontFamily: "Nunito", color: Colors.white); 
  
  static const TextStyle titleAppBar = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 20, fontFamily: "Product Sans", color: Colors.black);

 static const TextStyle titleTabBar = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 14, fontFamily: "Product Sans Medium", color: Colors.white);

  static const TextStyle orderTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 18, fontFamily: "Product Sans", color: Color(0xff141416));

  static const TextStyle orderDate = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Product Sans", color: Color(0xff777E90));

  static const TextStyle orderSuccessTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Product Sans Medium", color: Color(0xff009254));

  static const TextStyle orderPendingTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Product Sans Medium", color: Colors.amber);

  static const TextStyle orderCancelledTitle = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Product Sans Medium", color: Colors.red);

  static const TextStyle orderDetails = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 14, fontFamily: "Product Sans Medium", color: Colors.black);

  static const TextStyle cancelAlert = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16, fontFamily: "Product Sans", color: Colors.red);

  static const TextStyle acceptAlert = TextStyle(
      fontWeight: FontWeight.w700, fontSize: 16, fontFamily: "Product Sans", color: Colors.green);
}