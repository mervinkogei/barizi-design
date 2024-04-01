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

  static showAlertDialog(BuildContext context) {

  // ignore: unused_local_variable
  Widget okButton = ElevatedButton(
    child: const Text("Cancel", style: ThemeStyling.cancelAlert,),
    onPressed: () =>Navigator.of(context, rootNavigator: true).pop(),
  ); 

  Widget cancelButton = SizedBox(
    width: 119,
    height: 44,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                          side: const BorderSide(color: Color(0xff777E90))
                        ),
                        backgroundColor: Colors.white
      ),
      child: const Text("Okay", style: ThemeStyling.acceptAlert,),
      onPressed: () {
        Navigator.of(context, rootNavigator: true).pop();
        }
    ),
  ); 

  AlertDialog alert = AlertDialog(
    title: const Text("Alert Message!"),
    content: const Text("Kindly note that the rate page is coming up Next."),
    actions: [
      // okButton,
      cancelButton,
    ],
  );  
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
}

