import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

//ignore: non_constant_identifier_names
Future reference_abonnement(context) async {
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                //sizedbox
                SizedBox(
                  height: .5.h,
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
                      //Payer avec une référence abonnement.......
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 9.w),
                        child: Text(
                          'Payer avec une référence abonnement',
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
            
                //liste des references
                Text(
                  'Veuillez Entrer le numéro de compte auprès de la compagnie',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: const Color(0xFF007549),
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
            
                //sizedbox
                SizedBox(
                  height: 1.h,
                ),
            
                //Entrer le numero de compte
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 8.w, right: 8.w),
                  child: TextFormField(
                    //style: const TextStyle(color: Color(0xFFc75c0c),),
                    //controller: controle,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFc75c0c),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFc75c0c),
                        ),
                      ),
                      labelStyle: TextStyle(
                        color: Color(0xFFc75c0c),
                      ),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xFF007549),
                      )),
                      errorStyle: TextStyle(
                        color: Color(0xFF007549),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        width: 3,
                        color: Color(0xFFc75c0c),
                      )),
                      labelText: 'Entrez le numéro de compte',
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[0-9]{4,10}$').hasMatch(value)) {
                        return 'Veuillez entrer un numéro correct';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
            
                //sizedbox
                SizedBox(
                  height: 2.h,
                ),
            
                //bouton valider..................................
                Bounce(
                  duration: const Duration(milliseconds: 500),
                  onPressed: () {},
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
                      'Suivant',
                      style: TextStyle(
                          color: Color.fromARGB(255, 249, 210, 179),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                //sizedbox
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
