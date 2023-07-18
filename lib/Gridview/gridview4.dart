import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview4(),
  ));
}

class Gridview4 extends StatelessWidget {
  const Gridview4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 30,mainAxisSpacing: 10),
        /// way 1
         //childrenDelegate: SliverChildListDelegate( 
         // [ card(child:Text("1")),
         // card(child:Text("2")), ];  
        // )
        /// way 2
       // childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Text("data"))),
       /// way 3
       childrenDelegate: SliverChildBuilderDelegate(
        childCount: 20,
        (context, index) =>const
        Padding(
         padding: EdgeInsets.all(8.0),
         child: Card(child: Center(child: Text("Hello")),),
       )),
         ),
    );
  }
}