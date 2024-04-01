import 'package:barizi/Utils/data_function.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: DataFunction.menuAppBar(context, 'GemStore'),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: Column(
        children: [

        ],
      ),
    );
  }
}