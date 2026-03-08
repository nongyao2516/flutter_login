import 'package:flutter/material.dart';
import 'login.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(

        title: const Text("Home Page"),

        actions: [

          IconButton(
            icon: const Icon(Icons.logout),
            onPressed:(){

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder:(context)=>const LoginPage()
                )
              );

            },
          )

        ],

      ),

      body: const Center(
        child: Text(
          "Login Success",
          style: TextStyle(fontSize:22),
        ),
      ),

    );

  }

}