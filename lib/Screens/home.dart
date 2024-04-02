import 'package:barizi/Utils/data_function.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
List productsMenu = [
  {"name": "Women", "image": "images/women.png"},
  {"name": "Men", "image": "images/men.png"},
  {"name": "Accessories", "image": "images/accessories.png"},
  {"name": "Beauty", "image": "images/beauty.png"},
  ];


  @override
  Widget build(BuildContext context,) {
     final pages = List.generate(
        3,
        (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Container(
                height: 200,
                child: Center(
                    child: Image.asset('images/carousel.png'),
              ),
            )));
    return Scaffold(
      appBar: DataFunction.menuAppBar(context, 'GemStore'),
      drawer: const Drawer(),
      backgroundColor: Colors.white,
      body: Column(
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
                height: 240,
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
                            dotHeight: 16,
                            dotWidth: 16,
                            type: WormType.thinUnderground,
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
                         
          ],
        )

        ],
      ),
    );
  }
}