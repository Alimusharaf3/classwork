
import 'package:flutter/material.dart';
import 'package:flutter_application_basics/loginpage.dart';

class registrationpage extends StatefulWidget {

  @override
  State<registrationpage> createState() => _registrationpageState();
}

class _registrationpageState extends State<registrationpage> {
// to validate the entire form
final formkey = GlobalKey<FormState>();
var confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("stateful registration"),
      ),
      body:  Form(
        child: Column(
        children: [
          const Text("Registraton Page",
           style: TextStyle(fontSize: 30),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              
              decoration:const InputDecoration(
                hintText:"Email" ,
                border: OutlineInputBorder()),
               validator: (email){          // email - data from text form field
                if(email!.isEmpty  || !email.contains("@")){
                  return "Enter a valid email/field must not be empty";
                }else{
                  return null;
                }
               },
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password"),
                validator: (password){
                  confirmpass = password;         // password cannot accessed outside this validator function
                  if (password!.isEmpty || password.length < 6){
                    return "Password length should be greater than 6 / must not be empty";
                  }else{
                    return null;
                  }
                },
                ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),hintText: "Confirm Password"),
                validator: (cpassword){
                  // password - data from text form field
                  if (cpassword != confirmpass|| cpassword!.isEmpty){
                    return "Password Mismatch/empty";
                  }else{
                    return null;
                  }
                },
            ),
            
          ),
          ElevatedButton(onPressed: (){
            var isValid = formkey.currentState!.validate();
            if (isValid == true){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage()));
            }else{

            }
          },
           child: Text("RegistrationPage"))
        ],
      )),
      );
  }
}