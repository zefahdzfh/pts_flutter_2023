// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pts_2023/cart.dart';
import 'package:pts_2023/sepatu.dart';
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
              padding: const EdgeInsets.only(left: 24, right: 24),
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
      appBar: AppBar(
        leadingWidth: 1000,
        elevation: 0,
        foregroundColor: Color(0xff292D32),
        backgroundColor: Colors.transparent,
        toolbarHeight: 70,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 300,
                padding: EdgeInsets.only(left: 16, right: 16, top: 3),
                decoration: BoxDecoration(
                    color: Color(0xffF2F2F7), borderRadius: BorderRadius.circular(8)),
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
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(Iconsax.notification),
              SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  },
                  child: Icon(
                    Iconsax.bag,
                    color: Color(0xff292D32),
                  )),
            ],
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
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
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Product(0, 'assets/batik.png',
                              'Batik Pria Lengan Panjang', 'Rp199.900'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Sepatu()));
                            },
                            child: Container(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/sepatu.png'),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'New Balance 992 Grey Original',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff292D32)),
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Rp1.240.000',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff292D32)),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Product(1, 'assets/jeans.png',
                              'Skinny Jeans Dark Blue Wanita', 'Rp379.900'),
                          Product(
                              2,
                              'assets/kacamata.png',
                              'Kacamata Baca Anti Radiasi Blue Ray',
                              'Rp125.000'),
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Product(
                              3,
                              'assets/kemeja.png',
                              'Kemeja Pria Polos Lengan Pendek Oxford',
                              'Rp119.000'),
                          Product(4, 'assets/hoodie.png',
                              'Human Greatness Hoodie Hitam', 'Rp229.000'),
                        ],
                      ),
                    ],
                  ),
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

  Container Product(
      int index, String fotoProduk, String namaProduk, String hargaProduk) {
    return Container(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(fotoProduk),
          SizedBox(
            height: 12,
          ),
          Text(
            namaProduk,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff292D32)),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            hargaProduk,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)),
          )
        ],
      ),
    );
  }
}
