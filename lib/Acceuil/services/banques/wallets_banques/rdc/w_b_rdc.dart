import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sahel_pay/Acceuil/services/banques/wallets_banques/envoi_banque.dart';
import 'package:sizer/sizer.dart';

class w_b_rdc extends StatefulWidget {
  const w_b_rdc({super.key});

  @override
  State<w_b_rdc> createState() => _w_b_rdcState();
}

class _w_b_rdcState extends State<w_b_rdc> {
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
              Center(
                child: Text(
                  'Banques RDC',
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
                                'images/bq_rdc1.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(width: 8.w,),
                    
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
                                'images/bq_rdc2.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                    
                        SizedBox(width: 8.w,),
                    
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
                                'images/bq_rdc3.png',
                                fit: BoxFit.cover,
                              )),
                        ),
                        ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 1.h,),
              
              //wallets..............................................
              Center(
                child: Text(
                  'Wallets RDC',
                  style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: const Color(0xFFc75c0c),),
                ),
              ),
              ],
          ),
        ),
      ),
    );

  }
}