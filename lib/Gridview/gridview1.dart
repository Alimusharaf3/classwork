import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     /* GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 80,
      crossAxisSpacing: 30,
      mainAxisSpacing: 10),*/
     
       GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
       crossAxisSpacing: 30,
       mainAxisSpacing: 10
       ),
       
      children: List.generate(10, (index) => Card(child: Center(
        child: Image.asset("assets/images/grapes.jpg"),
       
      ),))
      ),
      
    );
  }
}