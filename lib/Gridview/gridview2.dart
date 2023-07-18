import 'package:flutter/material.dart';

class Gridview2 extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        // how many times placed vertically
        crossAxisCount: 2),
      
       itemBuilder: (context,index){
        return Card(
          color: Colors.lime,
          child: Center(
            child: Text("User $index",style: TextStyle(fontSize: 20,color: Colors.purple),),
          ),
        );
       }),
    );
  }
}