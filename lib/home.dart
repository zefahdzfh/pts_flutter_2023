// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:lucide_icons/lucide_icons.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          Text('hello tod')
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        selectedFontSize: 12,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedItemColor: Color(0xff292D32),
        unselectedFontSize: 12,
        unselectedLabelStyle: TextStyle(color: Color(0xff292D32)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Iconsax.home_15), label: 'Beranda',),
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: 'Favorit',),
          BottomNavigationBarItem(icon: Icon(Iconsax.task_square), label: 'Transaksi',),
          BottomNavigationBarItem(icon: Icon(Iconsax.profile_circle), label: 'Profile',),
        ],
      ),
    );
  }
}