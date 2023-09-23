// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Sepatu extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff292D32),
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Iconsax.arrow_left,color:Color(0xff292D32) ,)),
        title: Center(
          child: Text('Detail Produk',style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xff292D32)
          ),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(Iconsax.heart),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
        child: Column(
          children: [
           Image.asset('assets/sepatu.png',width: MediaQuery.of(context).size.width,)
          ],
        ),
      ),
    );
  }
}