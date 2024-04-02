import 'package:barizi/Screens/bottom_navigation.dart';
import 'package:barizi/Utils/dummy_data.dart';
import 'package:barizi/Utils/textStyling.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar_updated/rating_bar_updated.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
String? filterItem;
  List<String> filterList = <String>[
    "Filter",
    "Women",
    "Men",
    "Accessories",
    "Beauty",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () =>Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) =>  BottomNavigation()),
              (route) => false),
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
                  child: const Icon(Icons.arrow_back_ios_new))),
        ),
        title: const Text('Dresses', style: ThemeStyling.titleAppBar,),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                const Expanded(child: Text('Found \n152 Results', style: ThemeStyling.featuredText,)),
            
                Expanded(
                  child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid, width: 0.80),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(10),
                            hint: const Text(
                              'Search',
                            ),
                            isExpanded: true,
                            underline: Container(), 
                            value: filterItem,
                            items: filterList.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                ),
                              );
                            }).toList(),
                            onChanged: (_) {
                              FocusScope.of(context).requestFocus(FocusNode());
                              FocusScope.of(context).requestFocus(FocusNode());
                              setState(() {
                                filterItem = _!;
                              });
                            },
                          ),
                    ),
                  ),
                )
              ],
            ),
          ),

          Expanded(
            child: Container(              
              padding: const EdgeInsets.symmetric(horizontal: 2),  
              child: GridView.builder( 
                shrinkWrap: true, 
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: productsCategory.length,  
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                crossAxisCount: 2,  
                crossAxisSpacing: 8,  
                mainAxisSpacing: 8,  
                ),  
                itemBuilder: (BuildContext context, int index){  
                  return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 110,
                  width: 142,
                  child: Image.asset(productsCategory[index]["image"],
                  fit: BoxFit.cover,)),
                Text(productsCategory[index]["category"]),
                Text(productsCategory[index]["price"]),
                Row(
                  children: [
                    RatingBar.readOnly(
                    maxRating: 5,
                    initialRating: 3,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    halfFilledIcon: Icons.star_half,
                    isHalfAllowed: true,
                    filledColor: const Color(0xff508A7B),
                    size: 20,
                    ),            
                    const Text('(45)')
                  ],
                ),
              ],
            );
                },  
              )),
          ),  
        ],
      ),
    );
  }
}