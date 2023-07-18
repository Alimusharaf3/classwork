import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_basics/homepage.dart';
import 'package:flutter_application_basics/loginpage.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:tabbar() ,
    )
  );
}

class tabbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, 
    child: Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(tabs: [
          Icon(Icons.people),
          Text("Chats"),
          Text("Status"),
          Text("Calls")
        ]),
      ),
      body: TabBarView(children: [
        Center(child: Text("Community"),),
       Loginpage(),
        //Center(child: Text("Chats"),),
        Center(child: Text("Status"),),
        Center(child: Text("Calls"),),
      ]),
    )
    );
  }
  
}