import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:sahel_pay/Acceuil/services/banques/wallets_banques/envoi_banque.dart';

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
      height: 700,
        width: screen_width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 252, 250, 250),
        ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Banques.................................................................
              //sizedbox
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Banques RDC',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFc75c0c),),
                ),
              ),
              //sizedbox
              const SizedBox(height: 10,),
              Container(
                height: 100,
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
                              height: 60,
                              width: 60,
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
                    
                        const SizedBox(width: 30,),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 60,
                              width: 60,
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
                    
                        const SizedBox(width: 30,),
                    
                        Bounce(
                          duration: const Duration(milliseconds: 500),
                          onPressed: () {
                            envoi_banque(context);
                          },
                          child: Container(
                              height: 60,
                              width: 60,
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
              const SizedBox(height: 10,),
              
              //wallets..............................................
              const Padding(
                padding: EdgeInsets.only(right: 210),
                child: Text(
                  'Wallets RDC',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFc75c0c),),
                ),
              ),
              ],
          ),
        ),
      ),
    );

  }
}