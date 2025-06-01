import 'package:flutter/material.dart';
import 'package:t_b_navigation/T&B%20Naigation2.dart';


class Navigations extends StatefulWidget {
  const Navigations({super.key});

  @override
  State<Navigations> createState() => _NavigationState();
}

class _NavigationState extends State<Navigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigations Bar",
        style: TextStyle(
        color: Colors.white,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        
        
        
        //// Action
        
        
        actions: <Widget>[
          IconButton(
            onPressed: (){
              print("Press and click button");
            },
            color: Colors.white,
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: (){
              print("Press and click button");
            },
            icon: Icon(Icons.call),
            color: Colors.white,
          )
        ],


          /// Laeading
          leading: (
          IconButton(
            onPressed: (){
              print("Press and click the ICon Button");
            },
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          )
          ),




    ),body: Column(




      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,






      children: [





        Text(
            "Navigation Bars",
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        ),



        SizedBox(height: 35),


        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            hintText: "Enter Email",
            labelText: "Email",
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
          ),onChanged: (String text){

          },

        ),

        SizedBox(height: 25),


        TextField(
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "Enter Password",
            labelText: "Passowrd",
            prefixIcon: Icon(Icons.lock),
            border: OutlineInputBorder(),
          ),
          onChanged: (String text){

          },
        ),




        // Material Button
        MaterialButton(
          onPressed: (){
            print("Press and click button Login Buttons");
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=>Navigation()
                ),
            );
            
          },
          child: Text("Login In"),
          color: Colors.blue,
          textColor: Colors.white,
        ),








      ],









    ),
    );
  }
}
