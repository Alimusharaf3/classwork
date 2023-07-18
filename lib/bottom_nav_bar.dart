 import 'package:flutter/material.dart';
import 'package:flutter_application_basics/ListViewWithListGenerate.dart';
import 'package:flutter_application_basics/homepage.dart';
import 'package:flutter_application_basics/loginpage.dart';
 void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
 }

class BottomNavBar extends StatefulWidget {
 

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
 
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [
    Listview2(),
    ListView(),
    Loginpage(),
    Homepage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomBar"),),
      bottomNavigationBar: BottomNavigationBar(
        onTap:(tapindex){
          setState(() {
           index = tapindex;
          });
         
        } ,
        backgroundColor: Colors.green,
       // currentIndex: index
        selectedItemColor: Colors.white,
       // type:BottomNavigationBarType.fixed,
type: BottomNavigationBarType.shifting,
        items: const [
        BottomNavigationBarItem(
          backgroundColor: Colors.orange,
          icon: Icon(Icons.contacts_sharp),label: "Contact"),
        BottomNavigationBarItem(
          backgroundColor: Colors.black,
          icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
          icon: Icon(Icons.add_box_rounded),label: "View"),
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home),label: "Home"),
      ]),
      body: screens[index],
    );
  }
}