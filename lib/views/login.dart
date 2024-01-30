import 'package:brainblitz/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:brainblitz/services/InternetCon.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   InternetConnectionChecker().onStatusChange.listen((status) {
     final connected = status == InternetConnectionStatus.connected;
     showSimpleNotification(Text(connected ? "CONNECTED TO INTERNET" : "NO INTERNET"));
   });
  }

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
