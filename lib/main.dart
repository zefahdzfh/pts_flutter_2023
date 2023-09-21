import 'package:flutter/material.dart';
import 'package:pts_2023/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      //first route GetStarted() => login.dart => kedua.dart <=> login2.dart 
    );
  }
}