import 'package:flutter/material.dart';
import 'package:fyp/userDashboard.dart';
void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget{
  @override

    Widget build(BuildContext context){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: usrDashboard(),
        );
    }
}