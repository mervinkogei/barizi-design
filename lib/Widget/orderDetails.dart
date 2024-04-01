import 'package:barizi/Screens/bottom_navigation.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavigation(currentPageToNavigate: 2,))),
          child: Icon(Icons.arrow_back_ios_new)),
        title: Text('Order'),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}