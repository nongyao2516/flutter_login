import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future login() async {

    var url = Uri.parse("http://192.168.1.108/flutter_week9/php_api/login.php");

    var response = await http.post(url,body:{
      "username":username.text,
      "password":password.text
    });

    var data = json.decode(response.body);

    if(data["status"]=="success"){

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder:(context)=>const HomePage()
        )
      );

    }else{

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Username หรือ Password ไม่ถูกต้อง"),
          backgroundColor: Colors.red,
        )
      );

    }

  }

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: const Text("Login System"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            const Icon(Icons.account_circle,size:100),

            const SizedBox(height:30),

            TextField(
              controller: username,
              decoration: const InputDecoration(
                labelText:"Username",
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height:20),

            TextField(
              controller: password,
              obscureText:true,
              decoration: const InputDecoration(
                labelText:"Password",
                border: OutlineInputBorder()
              ),
            ),

            const SizedBox(height:30),

            SizedBox(
              width:double.infinity,
              height:50,

              child:ElevatedButton(
                onPressed: login,
                child:const Text("LOGIN"),
              )
            )

          ],

        ),
      ),
    );

  }

}