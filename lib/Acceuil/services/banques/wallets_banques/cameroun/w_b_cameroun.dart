import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sizer/sizer.dart';

import '../envoi_banque.dart';
import '../envoi_wallet.dart';

class w_b_cameroun extends StatefulWidget {
  const w_b_cameroun({super.key});

  @override
  State<w_b_cameroun> createState() => _w_b_camerounState();
}

class _w_b_camerounState extends State<w_b_cameroun> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: 70.h,
        width: screen_width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 252, 250, 250),
        ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Banques.................................................................
              //sizedbox
              SizedBox(height: 1.h,),
              Center(
                child: Text(
                  'Banques Cameroun',
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(0xFFc75c0c),),
                ),
              ),
              //sizedbox
              SizedBox(height: 1.h,),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/bq1.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(width: 3.h,),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/bq2.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(width: 3.h,),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/bq3.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(width: 3.h,),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/bq4.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
              //wallets..............................................
              Center(
                child: Text(
                  'Wallets Cameroun',
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Color(0xFFc75c0c),),
                ),
              ),
              //sizedbox
              SizedBox(height: 1.h,),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall1.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(
                          width: 3.h,
                        ),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall2.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(
                          width: 8.w,
                        ),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall3.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(
                          width: 3.h,
                        ),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall4.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(
                          width: 8.w,
                        ),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall5.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(
                          width: 8.w,
                        ),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_wallet(context);
                          },
                          child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.15),
                                      blurRadius: 3,
                                      spreadRadius: 2,
                                      //offset: const Offset(0,2),
                                    )
                                  ]
                                  ),
                              child: Image.asset(
                                'images/wall6.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        
                      ],
                    ),
                  ),
                ),
              ),
              
              ],
          ),
        ),
      ),
    );
  }
}