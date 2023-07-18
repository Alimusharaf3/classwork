import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("MyHome"),
      actions: [
        Icon(Icons.camera),
        SizedBox(width: 20,),
        Icon(Icons.search),
      
        

      ]),
      body: ListView(
        children: [
          Center(
            child: Text("Fruits",
            style: GoogleFonts.dancingScript(
              fontSize: 80,color: Colors.red
            ),),),
          
             Card(
              color: Colors.green,
              elevation: 19,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/banana.jpg")),
                title: Text("Banana",
                style: GoogleFonts.courgette()),
                subtitle: Text("\$35"),
                trailing:     // a widget that appears at the end of the row, after title and subtitle.(trailing = end of a ListTile)
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(width: 20,),
                    Icon(Icons.shopping_cart),
                  
                  ],
                  
                 // Icon(Icons.shopping_cart),
              ),
                ) 
               
              ),
           // ),
             Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/mango.jpg")),
                title: Text("Mango"),
                subtitle: Text("\$30"),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/pineapple.jpg")),
                title: Text("Pineapple"),
                subtitle: Text("\$15"),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
             Card(
              elevation: 15,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/watermelon.jpg")),
                title: Text("Watermelon",style: GoogleFonts.pacifico(),),
                subtitle: Text("\$10"),
                trailing: Icon(Icons.shopping_cart),
              ),
            ),
          const Card(
            child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/orange.jpg")),
                title: Text("Orange"),
                subtitle: Text("\$26"),
                trailing: Icon(Icons.shopping_cart),
              ),
          ),
              const Card(
                child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/images/grapes.jpg")),
                title: Text("Grapes"),
                subtitle: Text("\$23"),
                trailing: Icon(Icons.shopping_cart),
                          ),
              ),
    
        ],
      ),
    );
  }
}