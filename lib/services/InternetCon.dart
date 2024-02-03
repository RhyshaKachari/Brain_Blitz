import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';


class Internet{
bool connected = false;
checkInternetCon() async {
  connected = await InternetConnectionChecker().hasConnection ;
  final msg = connected ? "Connected to Internet" : "Not Connected to Internet" ;
  showSimpleNotification(
    Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(8.0),

      ),
      child : Text('$msg') ,) ,


  ) ;
}
}