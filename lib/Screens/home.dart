import 'package:barizi/Utils/data_function.dart';
import 'package:barizi/Utils/dummy_data.dart';
import 'package:barizi/Utils/textStyling.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
final controller = PageController(viewportFraction: 0.8, keepPage: true);
/// List of the products categories



  @override
  Widget build(BuildContext context,) {
     final pages = List.generate(
        3,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                    child: Stack(
                      children: [
                        Image.asset('images/carousel.png'),
                         Container(
                alignment: Alignment.topRight,
                child: const Text(
                  'Autumn \nCollection \n2021',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
                )),
                      ],
                    ),
              ),
            )));
    return Scaffold(
      appBar: DataFunction.menuAppBar(context, 'GemStore'),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
        
        /**
         * Here is the list of items to Select the categories
         */
         Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 100,
            child: ListView.builder(
              itemCount: productsMenu.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 45,width: 45,
                            decoration: BoxDecoration(
                              color:  index == 0 ? Colors.black:  Theme.of(context).focusColor ,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Image.asset(productsMenu[index]["image"])),
                          const SizedBox(height: 5,),
                          Text(productsMenu[index]["name"]),
                        ],
                      ),
                    ),
                  ),
                );
              },
              
            ),
          ),
        
          /**
           * Here is the Carousel banner with indicators to dynamically show the carousel items
           */
          
          Column(
            children: [
               SizedBox(
                  height: 180,
                  child: PageView.builder(
                    controller: controller,
                    itemBuilder: (_, index) {
                      return Column(
                        children: [
                          pages[index % pages.length],
                           SmoothPageIndicator(
                            controller: controller,
                            count: pages.length,
                            effect: const WormEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              type: WormType.normal,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                           
            ],
          ),
        
          /**
           * Featured Products Section Starts here
           */
        
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Feature Products', style: ThemeStyling.featuredText,),
                Text('Show all', style: ThemeStyling.showAllText,),
              ],
            ),
          ),
        
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 200,
            child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 90,
                      child: Column(
                        children: [
                          Container(
                            height: 126,width: 192,
                            child: Image.asset(products[index]["image"])),
                          const SizedBox(height: 5,),
                          Text(products[index]["product"]),
                        ],
                      ),
                    ),
                  ),
                );
              },
              
            ),
          ),
        
          ],
        ),
      ),
    );
  }
}