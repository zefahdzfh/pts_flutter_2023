// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pts_2023/cart.dart';
import 'package:readmore/readmore.dart';

class Sepatu extends StatefulWidget {
  @override
  State<Sepatu> createState() => _SepatuState();
}

class _SepatuState extends State<Sepatu> {
  bool liked = true;
  String deskripsi =
      "Our Made US 992 men's sneaker has heritage styling, premium materials and comfort features to elevate your off-duty look. These men's fashion sneakers have a pigskin";
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget Size(int index, String title) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          height: 51,
          decoration: BoxDecoration(
              color: selectedIndex == index
                  ? Color.fromARGB(66, 0, 177, 80)
                  : Colors.transparent,
              border: Border.all(
                  color: selectedIndex == index
                      ? Color(0xff00B14F)
                      : Color(0xffF2F2F7)),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: selectedIndex == index
                        ? Color(0xff00B14F)
                        : Color.fromARGB(153, 41, 45, 50)),
              ),
            ),
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xff292D32),
        leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(
              Iconsax.arrow_left,
              color: Color(0xff292D32),
            )),
        title: Center(
          child: Text(
            'Detail Produk',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color(0xff292D32)),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                liked = !liked;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 16),
              child: liked
                  ? Image.asset('assets/hatiHitam.png')
                  : Image.asset('assets/hatiMerah.png'),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 30),
            child: Column(
              children: [
                Image.asset(
                  'assets/sepatu.png',
                  width: MediaQuery.of(context).size.width,
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Balance 992 Grey Original',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff292D32)),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Icon(
                          Iconsax.star1,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Text(
                          '4.8',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff292D32)),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '(102) | 67 ulasan',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(163, 41, 45, 50)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    ReadMoreText(
                      deskripsi,
                      trimLines: 2,
                      textAlign: TextAlign.left,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: " Baca Selengkapnya ",
                      trimExpandedText: " Baca Lebih Sedikit ",
                      moreStyle: TextStyle(color: Color(0xff00B14F)),
                      lessStyle: TextStyle(color: Color(0xff00B14F)),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'Pilih Ukuran',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 16,),
                    Row(
                      children: [
                        Size(0, '39'),
                        SizedBox(width: 16,),
                        Size(1, '40'),
                        SizedBox(width: 16,),
                        Size(2, '41'),
                        SizedBox(width: 16,),
                        Size(3, '43'),
                        SizedBox(width: 16,),
                        
                      ],
                      
                    ),
                    SizedBox(height: 16,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Rp1.240.000',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Color(0xff292D32)
              ),),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
                },
                child: Container(
                  height: 47,
                  decoration: BoxDecoration(
                    color: Color(0xff00B14F),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 14,horizontal: 20),
                    child: Text('Tambah Keranjang',style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),),
                  ),
                ),
              )
            ],
          ),
          
          
        ),
      )
    );
  }
}
