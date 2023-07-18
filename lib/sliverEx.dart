import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: sliverEx(),
    )
  );
}

class sliverEx extends StatelessWidget {
  const sliverEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Sliver Appbar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt)
                ),
              ),
            ),),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(
            childCount: 30,
            (context, index) => Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
              height: 80,
              child: Text(
                "User $index",
              style: TextStyle(fontSize: 30),
              ),
            )))
        ],
       ),
    );
  }
}