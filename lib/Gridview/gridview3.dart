import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview3(),
  ));
}

class Gridview3 extends StatelessWidget {
  const Gridview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 4,
      children: List.generate(15, (index) => Container(
        decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(100)),
        child: Column(
          children: [
            Image.asset("assets/images/pineapple.jpg"),
            Text("PineApple",
            style: TextStyle(color: Colors.yellow),)
          ],
        ),
      )),),

    );
  }
}