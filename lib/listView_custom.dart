import 'package:flutter/material.dart';

class ListView_custom extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView 4"),
    ),
    body: ListView.custom(childrenDelegate: SliverChildListDelegate(List.generate(10, (index) => Text("Hello"),))
    ),
    );
  }
}