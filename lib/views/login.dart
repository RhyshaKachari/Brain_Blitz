import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/img/newlogo.png"),
          SizedBox(height: 35,),
          Text("Welcome to Brain Blitz" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
          SizedBox(height: 12,),
          ElevatedButton(onPressed: (){}, child: Text("Continue with Google")),
          SizedBox(height: 10,),
          Text("By Continuing, You are agreeing with  our TnC" , style: TextStyle(color: Colors.grey),)
        ],
      ),
    ),
    );
  }
}
