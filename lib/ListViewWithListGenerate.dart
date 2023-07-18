import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: Listview2(),));
}

class Listview2 extends StatelessWidget {
  var names =[
    "haneen",
    "rahul",
    "shibili",
    "anees",
    "jumal",
    "sufiyan",
    "anshad",
    "rooni",
    "moosa",
    "lulu",
    "ashiq"

  ];
  var images =[

"assets/images/banana.jpg",
"assets/images/mango.jpg",
"assets/images/pineapple.jpg",
"assets/images/banana.jpg",
"assets/images/grapes.jpg",
"assets/images/mango.jpg",
"assets/images/banana.jpg",
"assets/images/pineapple.jpg",
"assets/images/banana.jpg",
"assets/images/mango.jpg",
"assets/images/grapes.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview 2"),
      ),
      body: ListView(
        children: List.generate(11,
         (index) => Card(
          child: ListTile(
            
            leading:CircleAvatar(backgroundImage: AssetImage(images[index]),),
           // leading: Image.asset("assets/Iconarchive-Dog-Breed-Chihuahua.512.png"),
            //title: Text("MyName"),
            title: Text(names[index]),
          
            subtitle: Text("123456789"),
            trailing: Text("12 00 pm"),
          ),
         )),
      ),
    );
  }
}