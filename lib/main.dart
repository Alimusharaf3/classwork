import 'package:flutter/material.dart';
import 'package:flutter_application_basics/ListViewWithListGenerate.dart';
import 'package:flutter_application_basics/homepage.dart';
import 'package:flutter_application_basics/loginpage.dart';
//import 'package:flutter_application_basics/splash_screen.dart';
//import 'package:flutter_application_basics/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){       // to run a program
  runApp(          // to attach the widget tree to the ui
    MaterialApp( 
      debugShowCheckedModeBanner: false,    //to remove debug badge
        // default theme of our app (multiplatform support)
    home:Loginpage(),    // initial screen of our app , (home must be a widget it may be stateless or stateful)
  ));
}

class FirstPage extends StatelessWidget{     // stateless mean firstpage donot undergo any state change
  @override
  Widget build(BuildContext context) {      // to create a widget tree (Build context -> to monitor the widget in the widget tree)
      return  Scaffold(
      body:Container(
        //color:Colors.blueGrey,    // to set a single to the entire screen
        decoration:const BoxDecoration(        // to set an image as screen background
         // image:DecorationImage(
           // fit: BoxFit.fill,        // to fit the image to the entire screen
           // image:NetworkImage("https://images.unsplash.com/photo-1524055988636-436cfa46e59e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGdyZWVufGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60")
           //image: AssetImage("assets/images/greennew.jpg")
        gradient: LinearGradient(
          //stops: [.4,.3,.2,.1],
          colors: [
          Colors.green,
          Colors.lightGreenAccent,
          Colors.lightGreenAccent,
          Colors.lime],
          begin: Alignment.bottomRight, end: Alignment.topLeft),  
           ),
          child: Center(                          
          // multichild widget
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             // Icon(Icons.star,color:Colors.black,size: 45,),
            Image.asset("assets/Alecive-Flatwoken-Apps-Computer-Login.512.png",height: 110,width: 110,),
          //Image.network("https://cdn.pixabay.com/photo/2016/12/27/13/10/logo-1933884_640.png",height: 200,width: 200,),
              Text("My Application",
            style:GoogleFonts.pacifico(fontSize: 50,color: Colors.brown),
             // style:  TextStyle(fontSize: 40,color: Colors.brown,fontWeight: FontWeight.bold),
              )
            ],
          ),
          ),
        ),
      );
      
  }
} 