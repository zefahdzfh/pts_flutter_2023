// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              'Keranjang',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff292D32)),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Iconsax.more),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(color: Color(0xffF2F2F7)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 17, right: 17, top: 17, bottom: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Iconsax.location),
                              SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Dikirim Ke',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromARGB(179, 41, 45, 50)),
                              )
                            ],
                          ),
                          Text(
                            'Ubah',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff00B14F)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Jakarta, Cibubur, Kota Wisata \n Madrid No 23',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff292D32)),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 16),
          child: Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                height: 47,
                decoration: BoxDecoration(
                    color: Color(0xff00B14F),
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Tambah Keranjang',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
