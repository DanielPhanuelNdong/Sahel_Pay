import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'Paiement_factures/paiement_facture.dart';
import 'camwater_prepayé.dart';
import 'gestion_compte.dart';
import 'paiement_anticipation.dart';

//ignore: non_constant_identifier_names
Future factures_eau(context) async {
  //boite de dialogue pour entrer le numero et le montant............................................
  return await Get.bottomSheet(SingleChildScrollView(
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
      child: Container(
        height: 40.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xFFf7efe4).withOpacity(.5),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(10.0)),
          border: Border.all(
            color: Colors.white.withOpacity(.8), // La couleur de la bordure
            width: 2, // La largeur de la bordure
          ),
        ),
        child: Material(
          color: const Color(0xFFf7efe4).withOpacity(.5),
          child: Column(
            children: [
              //sizedbox
              SizedBox(
                height: 3.h,
              ),

              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Column(
                  children: [
                    //logo de camwater..........
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            height: 14.h, width: 40.w, 'images/camwater2.png')),
                    //Bienvenu sur le service Camwater.......
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Text(
                        'Bienvenu sur le service Camwater',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: const Color(0xFFc75c0c),
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp),
                      ),
                    ),
                  ],
                ),
              ),

              //sizedbox
              SizedBox(
                height: 2.h,
              ),

              Column(
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      Get.back();
                      Paiement_facture(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'Paiement factures eau',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      Get.back();
                      Paiement_anticipation(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'Paiement par anticipation',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      Get.back();
                      Paiement_Prepaye(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'CAMWATER Prépayé',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      Get.back();
                      Gestion_compte(context);
                    },
                    child: Container(
                      height: 4.h,
                      width: 75.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'Gestion compte CAMWATER',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
