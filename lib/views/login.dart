import 'package:brainblitz/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:hexcolor/hexcolor.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
    body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
           HexColor("#18005F") ,
                HexColor("#470058"),

              ],
            )
        ),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/BrainBlitzlogo.png"),
            SizedBox(height: 35,),
            Text("Welcome to Brain Blitz" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold , color: Colors.white),),
            SizedBox(height: 12,),
            SignInButton(Buttons.GoogleDark, onPressed: () async{
            await signWithGoogle();
            }),
            SizedBox(height: 10,),
            Text("By Continuing, You are agreeing with  our TnC" , style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    ),
    );
  }
}
