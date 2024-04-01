import 'package:barizi/Screens/bottom_navigation.dart';
import 'package:barizi/Widget/orderDetails.dart';
import 'package:barizi/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        cardColor: const Color(0xffBEBFC4),
        canvasColor: const Color(0xff43484B),
        hintColor: const Color(0xff777E90),
        useMaterial3: true,
        fontFamily: 'Product Sans',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/dashboard': (context) =>  BottomNavigation(),
        '/details': (context) => const OrderDetails()
      },
    );
  }
}
