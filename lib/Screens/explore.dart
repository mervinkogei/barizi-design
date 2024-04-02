import 'package:barizi/Utils/data_function.dart';
import 'package:barizi/Utils/textStyling.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: DataFunction.menuAppBar(context, 'Explore/Search'),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text('Explore or Search Coming Up Next', style: ThemeStyling.titleAppBar,))
        ],
      ),
    );
  }
}