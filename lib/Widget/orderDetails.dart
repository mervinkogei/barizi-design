import 'package:barizi/Screens/bottom_navigation.dart';
import 'package:barizi/Utils/data_function.dart';
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
        title: const Text('Order #1547', style: ThemeStyling.titleAppBar,),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xffFAFAFA),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(
              height: 95,
              decoration: BoxDecoration(
                  color: const Color(0xff575757),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
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
            ),

            const SizedBox(height: 20,),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Column(
                  children: [
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Order number'),
                          Text('#1514'),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Tracking Number'),
                          Text('IK987362341'),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),

                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery address'),
                          Text('SBI Building, Software Park'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 15),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                child: Column(
                  children: [
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Maxi Dress'),
                          Text('x1'),
                          Text('\$68.00'),
                        ],
                      ),
                    ),
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Linen Dress'),
                          Text('x1'),
                          Text('\$52.00'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),                
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sub Total'),
                          Text('120.00'),
                        ],
                      ),
                    ),
                    Padding(
                       padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Shipping'),
                          Text('0.00'),
                        ],
                      ),
                    ),                
                    SizedBox(height: 10,),
                    Divider(),
                    SizedBox(height: 15,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total'),
                          Text('\$120.00'),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),                
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 168, height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: const BorderSide(color: Color(0xff777E90))
                      ),
                      backgroundColor: Colors.white
                    ),
                    onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BottomNavigation(
                      ))), child: const Text('Return Home',style: TextStyle(fontSize: 16,fontFamily: 'Product Sans', color:Color(0xff777E90)),))),
                SizedBox(
                  width: 119, height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      backgroundColor: const Color(0xff343434)
                    ),
                    onPressed: ()=> DataFunction.showAlertDialog(context), child: const Text('Rate', style: ThemeStyling.welcomeButton,))),
              ],
            )

          
          ],
        ),
      ),
    );
  }
}
