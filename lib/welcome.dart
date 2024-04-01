import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/welcome.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
          const Color(0xff000000).withOpacity(0.5),
          BlendMode.darken,
        ),
            ),
            
          ),
          child: Column(
            children: [
              const SizedBox(height: 582,),
              const Text('Welcome to GemStore!', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),),
              const SizedBox(height: 23),
              const Text('The home for a fashionista',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700)),
              const SizedBox(height: 40,)
,              SizedBox(
                width: 193,
                height: 53,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[600],
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29.5),
                    side: const BorderSide(
                      width: 2,
                      color: Colors.white
                    )                    
                  ),
                  ),
                  onPressed: (){}, child: const Text('Get Started', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),)))
            ],
          ),
      ),
    );
  }
}