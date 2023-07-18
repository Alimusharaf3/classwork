import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview5(),
  ));
}


class Gridview5 extends StatelessWidget {
  const Gridview5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 70,
      // children:[],
      children: List.generate(10, (index) => Card(child: Center(child: Icon(Icons.access_time_filled_rounded,size: 60,)),)),
      ),
    );
  }
}