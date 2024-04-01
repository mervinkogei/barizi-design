import 'package:barizi/Utils/data_function.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DataFunction.menuAppBar(context, 'My Orders'),
      body: Column(
        children: [
          
        ],
      ),
    );
    
  }
}