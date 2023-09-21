// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:lucide_icons/lucide_icons.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget Category(int index, String title) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          height: 43,
          decoration: BoxDecoration(
              color: selectedIndex == index
                  ? Color(0xff00B14F)
                  : Color(0xffF2F2F7),
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xff00B14F)
                      : Color(0xff292D32)),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 24,right: 24),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: selectedIndex == index
                        ? FontWeight.w500
                        : FontWeight.w400,
                    color: selectedIndex == index
                        ? Colors.white
                        : Color(0xff292D32)),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48,
                      width: 300,
                      padding: EdgeInsets.only(left: 16, right: 16, top: 3),
                      decoration: BoxDecoration(
                          color: Color(0xffF2F2F7),
                          borderRadius: BorderRadius.circular(8)),
                      child: TextFormField(
                        style: TextStyle(color: Color(0xff292D32)),
                        decoration: InputDecoration(
                            icon: Icon(
                              Iconsax.search_normal,
                              color: Color(0xff292D32),
                            ),
                            hintText: 'Cari Pakaian Pria ...',
                            hintStyle: TextStyle(color: Color(0xff6F7075)),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Row(
                      children: [
                        Icon(Iconsax.notification),
                        SizedBox(
                          width: 24,
                        ),
                        Icon(Iconsax.bag),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Image.asset('assets/Banner.png'),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff292D32)),
                    ),
                    Text(
                      'Lihat Semua',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff00B14F)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Category(0, 'Semua'),
                      SizedBox(
                        width: 11,
                      ),
                      Category(1, 'Kemeja'),
                      SizedBox(
                        width: 11,
                      ),
                      Category(2, 'Sepatu'),
                      SizedBox(
                        width: 11,
                      ),
                      Category(3, 'Aksesoris'),
                    ],
                  ),
                ),
                SizedBox(height: 24,),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/batik.png'),
                              SizedBox(height: 12,),
                              Text('Batik Pria Lengan \n Panjang', style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff292D32)
                              ),),
                              SizedBox(height: 12,),
                              Text('Rp199.900', style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff292D32)
                              ),)
                            ],
                          ),
                          
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
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
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_15),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.heart),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.task_square),
            label: 'Transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.profile_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
