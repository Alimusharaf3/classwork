import 'package:flutter/material.dart';
import 'package:flutter_application_basics/homepage.dart';
// import 'package:flutter_application_basics/registrationpage.dart';
import 'package:flutter_application_basics/stateful_rgstrnpage.dart';

// ignore: must_be_immutable
class Loginpage extends StatelessWidget {

     String Username = "admin@123";
     String Password = "abc123";
     // for fetching 


     final uname = TextEditingController();
     final pass  = TextEditingController();

  Loginpage({super.key}); 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
  //  appBar: AppBar(title: Text("Login Page"),),
    body: Column(
      children: [
        Image.asset("assets/Alecive-Flatwoken-Apps-Computer-Login.512.png",height: 100,width: 100,),
         Padding(
          padding: EdgeInsets.all(14.0),
          child: TextField(
            controller: uname,
            decoration: InputDecoration(border:OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: "Username",
            helperText: "Username must be an email",
            labelText: "Username",
            prefixIcon: const Icon(Icons.person)
            ),
            
            ),
          ),
          

        
         Padding(
          padding: EdgeInsets.only(left: 12,right: 12,bottom: 12),
          child: TextField(
            controller: pass,
            obscureText: true,
            obscuringCharacter: '*',
            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            hintText: "Password",
            helperText: "Password must contain 6 characters",
            labelText: "Password",
            prefixIcon:  const Icon(Icons.visibility_off_sharp),
            suffixIcon:  const Icon(Icons.visibility)
            ),
          ),
        ),

        ElevatedButton(
          onPressed: (){
            if(uname.text != ""   && pass.text != ""){
            if(uname.text == Username  && pass.text == Password){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>Homepage() ));
            }else{
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content:  Text("Email/Password is incorrect")));
            }
        }else{
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content:  Text("Fields must not be empty"),
                backgroundColor: Colors.red,
                ));
        }
          },
         child: Text("Login")),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>registrationpage()
          ));},
        
         child: const Text("Not a User !!!!!!!Register Here..."))
      ],
    ),
   );
  }
}