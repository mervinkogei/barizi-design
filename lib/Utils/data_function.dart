import 'package:barizi/Utils/textStyling.dart';
import 'package:flutter/material.dart';

class DataFunction{

  static AppBar menuAppBar(BuildContext context, String title){
    return AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title:  Text(title, style: ThemeStyling.titleAppBar,),
        leading: IconButton(
          icon: Image.asset('images/menu.png'),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:30.0),
            child: Image.asset('images/notification.png'),
          )
        ],
      );

  } 
}

