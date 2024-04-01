import 'package:barizi/Screens/bottom_navigation.dart';
import 'package:barizi/Utils/textStyling.dart';
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
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BottomNavigation(
                        currentPageToNavigate: 2,
                      ))),
              child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    ),
                  ),
                  child: Icon(Icons.arrow_back_ios_new))),
        ),
        title: Text('Order #1547', style: ThemeStyling.titleAppBar,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 95,
              decoration: BoxDecoration(
                  color: Color(0xff575757),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your order is delivered', style: ThemeStyling.orderCardTitle,),
                          SizedBox(height: 5),
                          Text('Rate product to get 5 points for collect.', style: ThemeStyling.orderCardSubTitle,),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image.asset('images/payment.png')],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
