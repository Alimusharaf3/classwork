import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Lisview_seperator extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("List Seperator"),),
      body: ListView.separated(itemBuilder: (context,index){
        return const Card(
          color: Colors.amber,
          child: Text("Hello"),
        );
      },
       separatorBuilder: (context, index){
        return const Divider(color: Colors.red);
       },
        itemCount: 10)
    );
  
  } 
}