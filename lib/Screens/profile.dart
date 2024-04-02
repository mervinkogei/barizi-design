import 'package:barizi/Utils/data_function.dart';
import 'package:barizi/Utils/textStyling.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: DataFunction.menuAppBar(context, 'My Profile'),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Profile Coming Up Next', style: ThemeStyling.titleAppBar,))
        ],
      ),
    );
  }
}