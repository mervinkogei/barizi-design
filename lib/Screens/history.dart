import 'package:barizi/Utils/data_function.dart';
import 'package:barizi/Utils/textStyling.dart';
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
      backgroundColor: Colors.white,
           body: SingleChildScrollView(
          child: Column(children: [
            _tabSection(context),
          ]),
        ));
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 5),
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
          SizedBox(height: 5),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(children: [
              Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              color: Colors.grey,
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Not Applicable',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        Text('Requested',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.circle,
                                          color: Colors.green,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(Icons.my_location_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                        'Kitengela, Roundabout along Mombasa Road Next to Total Petrol Station'))
                              ],
                            ),
                          
                            const Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Text(
                                        'Kitengela, Roundabout along Mombasa Road Next to Total Petrol Station'))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                    text: const TextSpan(
                                  text: 'Order ID:  ',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    WidgetSpan(
                                      child: Text(
                                        '#23940',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ],
                                )),
                                RichText(
                                    text: const TextSpan(
                                  text: 'Distance:  ',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    WidgetSpan(
                                      child: Text(
                                        '5.6 KM',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // backgroundColor: AppColors.brownColor
                                        ),
                                    onPressed: () {},
                                    child: const Text(
                                      'Cancel',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        // backgroundColor: AppColors.jonquil
                                        ),
                                    onPressed: () {},
                                    child: const Text('Accept')),
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
              Container(
                child: Text("Articles Body"),
              ),
              Container(
                child: Text("User Body"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}