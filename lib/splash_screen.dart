import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_basics/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){      
  runApp(         
    MaterialApp( 
      debugShowCheckedModeBanner: false, 
    home: Splashpage()
  ));   
}

class Splashpage extends StatefulWidget{     
  @override
  State<Splashpage> createState() => _SplashpageState();        // create and initial state for the screen
}


class _SplashpageState extends State<Splashpage> {           // initial state of Splash page
   // there are two functionalities in state class
   // initState(){}  and  setState(){}
   // initState(){} -  what will happen when the app or screen is loaded initially
   // setState(){}  -  what change wil occure on a widget or screen

@override
  void initState() {
  Timer(Duration(seconds: 3), () {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
      return Loginpage();
      }));
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
        body: Container(
        decoration: const BoxDecoration(       
          image:DecorationImage(
            fit: BoxFit.fill,       
           image: AssetImage("assets/images/greennew.jpg")),
           ),
          child: Center(                          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset("assets/Alecive-Flatwoken-Apps-Computer-Login.512.png",height: 110,width: 110,),
              Text("My Application",
            style:GoogleFonts.pacifico(fontSize: 50,color: Colors.brown),
              )
            ],
          ),
          ),
        ),
      );
      
  }
}