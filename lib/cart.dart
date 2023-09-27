// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class Cart extends StatefulWidget {
  @override
  State<Cart> createState() => _CartState();
}

String formatRupiah(int harga) {
  final currencyFormat = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp', decimalDigits: 0);
  return currencyFormat.format(harga);
}

class _CartState extends State<Cart> {
  var P1Count =1;
  int P1Price =1240000;

  var P2Count =1;
  int P2Price =450000;

  var P3Count =1;
  int P3Price =165000;

  int Ongkir=14000;


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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
              child: Column(
                children: [
                  Alamat(),
                  SizedBox(height: 24,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/sepatu.png',width: 100,height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('New Balance 992 ...',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff292D32)
                          ),),
                          SizedBox(height: 6,),
                          Text('40',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(161, 41, 45, 50)
                          ),),
                          SizedBox(height: 16,),
                          Text('${formatRupiah(P1Price * P1Count)}',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292D32)
                          ),)
                        ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffF2F2F7)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 12),
                            child: Row(
                              children: [
                                GestureDetector(child: Icon(Iconsax.minus,color:Color.fromARGB(161, 41, 45, 50) ,),
                                onTap: (){
                                   if(P1Count > 1) {
                                        setState(() {
                                          P1Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                SizedBox(width: 16,),
                                Text('$P1Count', style: TextStyle(
                                    fontSize: 16
                                  )),

                                SizedBox(width: 16),
                                GestureDetector(child: Icon(Iconsax.add,color: Color(0xff00B14F),),
                                 onTap: (){
                                    setState(() {
                                        P1Count += 1;

                                    },
                                  );
                                 })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/kacamata.png',width: 100,height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Kacamata Baca ...',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff292D32)
                          ),),
                          SizedBox(height: 6,),
                          Text('-2, Hitam',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(161, 41, 45, 50)
                          ),),
                          SizedBox(height: 16,),
                          Text('${formatRupiah(P2Price * P2Count)}',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292D32)
                          ),)
                        ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffF2F2F7)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 12),
                            child: Row(
                              children: [
                                GestureDetector(child: Icon(Iconsax.minus,color:Color.fromARGB(161, 41, 45, 50) ,),
                                onTap: (){
                                   if(P2Count > 1) {
                                        setState(() {
                                          P2Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                SizedBox(width: 16,),
                                Text('$P2Count', style: TextStyle(
                                    fontSize: 16
                                  )),

                                SizedBox(width: 16),
                                GestureDetector(child: Icon(Iconsax.add,color: Color(0xff00B14F),),
                                 onTap: (){
                                    setState(() {
                                        P2Count += 1;

                                    },
                                  );
                                 })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/hoodie.png',width: 100,height: 100,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Human Greatness ,,,',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff292D32)
                          ),),
                          SizedBox(height: 6,),
                          Text('XL, Hitam',style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(161, 41, 45, 50)
                          ),),
                          SizedBox(height: 16,),
                          Text('${formatRupiah(P3Price * P3Count)}',style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff292D32)
                          ),)
                        ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffF2F2F7)),
                            borderRadius: BorderRadius.circular(8)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 12),
                            child: Row(
                              children: [
                                GestureDetector(child: Icon(Iconsax.minus,color:Color.fromARGB(161, 41, 45, 50) ,),
                                onTap: (){
                                   if(P3Count > 1) {
                                        setState(() {
                                          P3Count -= 1;
                                        });
                                      }
                                    },
                                  ),
                                SizedBox(width: 16,),
                                Text('$P3Count', style: TextStyle(
                                    fontSize: 16
                                  )),

                                SizedBox(width: 16),
                                GestureDetector(child: Icon(Iconsax.add,color: Color(0xff00B14F),),
                                 onTap: (){
                                    setState(() {
                                        P3Count += 1;

                                    },
                                  );
                                 })
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 96,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subtotal',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Color.fromARGB(161, 41, 45, 50)
                            ),),
                            Text('${formatRupiah(P1Count+P2Price*P2Count+P3Price*P3Count)}',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color:Color(0xff292D32)
                            ),),
                          ],
                        ),
                        SizedBox(height: 24,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Ongkir',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Color.fromARGB(161, 41, 45, 50)
                            ),),
                            Text('${formatRupiah(Ongkir)}',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color:Color(0xff292D32)
                            ),),
                          ],
                        ),
                        SizedBox(height: 48,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total',style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color:Color.fromARGB(161, 41, 45, 50)
                            ),),
                            Text('${formatRupiah(Ongkir+P1Price*P1Count+P2Price*P2Count+P3Price*P3Count)}',style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color:Color(0xff292D32)
                            ),),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
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

  Container Alamat() {
    return Container(
              decoration: BoxDecoration(color: Color(0xffF2F2F7),borderRadius: BorderRadius.circular(8)),
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
            );
  }
}
