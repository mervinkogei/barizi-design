import 'package:barizi/Utils/data_function.dart';
import 'package:barizi/Utils/textStyling.dart';
import 'package:barizi/Widget/orderDetails.dart';
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
      resizeToAvoidBottomInset: false,
      appBar: DataFunction.menuAppBar(context, 'My Orders'),
      backgroundColor: Colors.white,
           body: SingleChildScrollView(
             child: Container(
               child: _tabSection(context),
             ),
           ));
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
         const  SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: TabBar(
               indicator: BoxDecoration(
              color: Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(30),
              
            ),
            dividerColor: Colors.transparent,
            labelStyle: ThemeStyling.titleTabBar,
              tabs: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Tab(text: "Pending"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Tab(text: "Delivered"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Tab(text: "Cancelled"),
              ),
            ]),
          ),
          const SizedBox(height: 5),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(children: [

              //Pending Orders  
            Container(
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2.0, 
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Card(
                              elevation: 0,
                              color: const Color(0xffffffff),
                              shape: RoundedRectangleBorder(
                                side:  const BorderSide(
                                  width: 0.1,
                                  color: Colors.grey
                                ),
                              borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Order #1514', style: ThemeStyling.orderTitle,),
                                        Text('13/05/2021', style: ThemeStyling.orderDate,),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        Text('Tracking number: '),
                                        Text('IK987362341', style: ThemeStyling.orderDetails,),
                                    
                                      ],
                                    ),
                                     const  SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                        text: const TextSpan(
                                            text: 'Quantity:',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 18),
                                            children: <TextSpan>[
                                              TextSpan(text: ' 2', style: ThemeStyling.orderDetails,
                                              )
                                            ]
                                        ),
                                      ),
                                    
                                      RichText(
                                      text: const TextSpan(
                                          text: 'Subtotal: ',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(text: '\$110',style: ThemeStyling.orderDetails,
                                            )
                                          ]
                                      ),
                                    ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('PENDING', style: ThemeStyling.orderPendingTitle,),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                               side: const BorderSide(
                                                width: 1.5,
                                                color: Colors.black
                                               )
                                                ),
                                            onPressed: () =>Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                                            MaterialPageRoute(builder: (context) => const OrderDetails()),
                                            (route) => false),
                                            child: const Text('Details', style: ThemeStyling.orderDetails,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );            
                    
                  }
                ),
              ),
            ),
                

            //Delivered            
                Container(
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2.0, 
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Card(
                              elevation: 0,
                              color: const Color(0xffffffff),
                              shape: RoundedRectangleBorder(
                                side:  const BorderSide(
                                  width: 0.1,
                                  color: Colors.grey
                                ),
                              borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Order #1514', style: ThemeStyling.orderTitle,),
                                        Text('13/05/2021', style: ThemeStyling.orderDate,),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        Text('Tracking number: '),
                                        Text('IK987362341', style: ThemeStyling.orderDetails,),
                                    
                                      ],
                                    ),
                                     const  SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                        text: const TextSpan(
                                            text: 'Quantity:',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 18),
                                            children: <TextSpan>[
                                              TextSpan(text: ' 2', style: ThemeStyling.orderDetails,
                                              )
                                            ]
                                        ),
                                      ),
                                    
                                      RichText(
                                      text: const TextSpan(
                                          text: 'Subtotal: ',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(text: '\$110',style: ThemeStyling.orderDetails,
                                            )
                                          ]
                                      ),
                                    ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('DELIVERED', style: ThemeStyling.orderSuccessTitle,),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                               side: const BorderSide(
                                                width: 1.5,
                                                color: Colors.black
                                               )
                                                ),
                                            onPressed: () =>Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                                            MaterialPageRoute(builder: (context) => const OrderDetails()),
                                            (route) => false),
                                            child: const Text('Details', style: ThemeStyling.orderDetails,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );            
                    
                  }
                ),
              ),
            ),
                
                //Cancelled
                Container(
              child: SingleChildScrollView(
                child: ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 2.0, 
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Card(
                              elevation: 0,
                              color: const Color(0xffffffff),
                              shape: RoundedRectangleBorder(
                                side:  const BorderSide(
                                  width: 0.1,
                                  color: Colors.grey
                                ),
                              borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Order #1514', style: ThemeStyling.orderTitle,),
                                        Text('13/05/2021', style: ThemeStyling.orderDate,),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    const Row(
                                      children: [
                                        Text('Tracking number: '),
                                        Text('IK987362341', style: ThemeStyling.orderDetails,),
                                    
                                      ],
                                    ),
                                     const  SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                        text: const TextSpan(
                                            text: 'Quantity:',
                                            style: TextStyle(
                                                color: Colors.black, fontSize: 18),
                                            children: <TextSpan>[
                                              TextSpan(text: ' 2', style: ThemeStyling.orderDetails,
                                              )
                                            ]
                                        ),
                                      ),
                                    
                                      RichText(
                                      text: const TextSpan(
                                          text: 'Subtotal: ',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(text: '\$110',style: ThemeStyling.orderDetails,
                                            )
                                          ]
                                      ),
                                    ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text('CANCELLED', style: ThemeStyling.orderCancelledTitle,),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                               side: const BorderSide(
                                                width: 1.5,
                                                color: Colors.black
                                               )
                                                ),
                                            onPressed: () => Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                                            MaterialPageRoute(builder: (context) => const OrderDetails()),
                                            (route) => false), 
                                            child: const Text('Details', style: ThemeStyling.orderDetails,)),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );            
                    
                  }
                ),
              ),
            ),
                
                
              ]),
            ),
          ),
        ],
      ),
    );
  }
}