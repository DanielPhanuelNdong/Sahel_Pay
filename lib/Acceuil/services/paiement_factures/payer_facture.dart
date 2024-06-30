import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'ressources/canal+.dart';
import 'ressources/eau/eau.dart';
import 'ressources/operateur_camtels.dart';
import 'ressources/operateur_mtn.dart';
import 'ressources/operateurs_orange.dart';
import 'ressources/startimes.dart';
import 'ressources/électricité/eneo.dart';

class payer_facture extends StatefulWidget {
  const payer_facture({super.key});

  @override
  State<payer_facture> createState() => _payer_factureState();
}

class _payer_factureState extends State<payer_facture> {
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
  TextEditingController control = TextEditingController();
//String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final List<String> mode_transfert1 = [
    'Mobile Money',
    'Sahel Money',
    'Mobile Wallet'
  ];
  final List<String> ressources = ['Eau', 'Electricité', 'TV', 'Camtel'];

  String current_option = "";
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
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //camwater..............................................
              Padding(
                padding: EdgeInsets.only(right: 85.w),
                child: Text(
                  'Eau',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          factures_eau(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              'images/camwater.png',
                              fit: BoxFit.cover,
                            )),
                      )
                    ],
                  ),
                ),
              ),
              //eneo.................................................................
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 70.w),
                child: Text(
                  'Electricité',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          factures_eneo(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              'images/eneo.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              //Canal+........................................................
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 85.w),
                child: Text(
                  'TV',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //cnal+...........................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          canal(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              'images/canal+.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      //startimes........
                      SizedBox(
                        width: 5.h,
                      ),

                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          startimes(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              'images/startimes.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              //camtel......................................................
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 70.w),
                child: Text(
                  'Opérateurs',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              SizedBox(
                height: 1.h,
              ),

              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //Camtel........................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          operater_camtel(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/camtel.png',
                              fit: BoxFit.cover,
                            )),
                      ),

                      SizedBox(
                        width: 13.w,
                      ),
                      //Orange........................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          operater_orange(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/orange.png',
                              fit: BoxFit.cover,
                            )),
                      ),

                      SizedBox(
                        width: 13.w,
                      ),
                      //MTN........................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {
                          operater_mtn(context);
                        },
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/mtn.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              //Sahel pay......................................................
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 60.w),
                child: Text(
                  'Credit du Sahel',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {},
                        child: Container(
                            height: 7.h,
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
                              ],
                            ),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/credit_sahel.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 60.w),
                child: Text(
                  'Autres factures',
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFc75c0c),
                  ),
                ),
              ),
              //sizedbox
              SizedBox(
                height: 1.h,
              ),
              Container(
                height: 10.h,
                width: screen_width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //CNPS.......................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {},
                        child: Container(
                            height: 7.h,
                              width: 13.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50)),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/cnps.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      //startimes........
                      SizedBox(
                        width: 13.w,
                      ),
                      //Fecafoot........................
                      Bounce(
                        duration: const Duration(milliseconds: 500),
                        onPressed: () {},
                        child: Container(
                            height: 7.h,
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
                                ]),
                            child: Image.asset(
                              height: 7.h,
                              width: 13.w,
                              'images/fecafoot.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future factures() async {
    //boite de dialogue pour entrer le numero et le montant............................................
    return await Get.bottomSheet(
        //backgroundColor: Colors.red,
        //persistent: false,
        SingleChildScrollView(
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFFf7efe4).withOpacity(.5),
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(10.0)),
            border: Border.all(
              color: Colors.white.withOpacity(.8), // La couleur de la bordure
              width: 2, // La largeur de la bordure
            ),
          ),
          child: Material(
            color: const Color.fromARGB(255, 245, 232, 213).withOpacity(.7),
            child: Form(
                key: formKey,
                child: Column(
                  children: [
                    //sizedbox
                    SizedBox(
                      height: 3.h,
                    ),

                    // Entrer les informations necessaires
                    Text(
                      textAlign: TextAlign.center,
                      'Veillez entrer les informations\n nécessaires',
                      style: TextStyle(
                          color: const Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 13.sp),
                    ),

                    //sizebox
                    SizedBox(
                      height: 2.h,
                    ),

                    Container(
                      height: 27.h,
                      width: 80.w,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.8),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(.1),
                                blurRadius: 4,
                                spreadRadius: 3,
                                offset: const Offset(0, 2))
                          ]),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              //Entrer le numero
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 25, left: 30, right: 30),
                                child: TextFormField(
                                  //style: const TextStyle(color: Color(0xFF007549),),
                                  cursorColor: const Color(0xFFc75c0c),
                                  controller: controle,
                                  //cursorColor: Theme.of(context).primaryColor,
                                  keyboardType: TextInputType.phone,
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
                                    //labelStyle: Theme.of(context).textTheme.bodyMedium,
                                    focusColor: Color(0xFFc75c0c),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                      width: 3,
                                      color: Color(0xFFc75c0c),
                                    )),
                                    labelText: 'Entrez le numéro de facture',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                            .hasMatch(value)) {
                                      return 'Veuillez entrer un numero correct';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),

                              //sizebox
                              SizedBox(
                                height: 1.h,
                              ),

                              //Entrer le montant
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 30, right: 30),
                                child: TextFormField(
                                  //style: const TextStyle(color: Color(0xFFc75c0c),),
                                  controller: controles,
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
                                    labelText: 'Entrez le montant',
                                  ),
                                  validator: (value) {
                                    if (value!.isEmpty ||
                                        !RegExp(r'^[0-9]{4,10}$')
                                            .hasMatch(value)) {
                                      return 'Veuillez entrer un montant correct';
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //sizebox
                    SizedBox(
                      height: 2.h,
                    ),

                    //bouton de confirmation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Bouton annuler
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 4.h,
                            width: 25.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xFF007549)),
                              color: Colors.white,
                            ),
                            child: Text(
                              'Annuler',
                              style: TextStyle(
                                  color: const Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            ),
                          ),
                        ),

                        //bouton valider..................................
                        InkWell(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              Get.back();
                              //Boite de dialogue pour entrer le code PIN........................................
                              Get.defaultDialog(
                                barrierDismissible: true,
                                buttonColor: const Color(0xFF007549),
                                backgroundColor: const Color(0xFFf7efe4),
                                cancelTextColor: const Color(0xFF007549),
                                confirmTextColor: Colors.white,
                                textCancel: 'Annuler',
                                textConfirm: "Valider",
                                title: 'Confirmation de paiement',
                                titlePadding: const EdgeInsets.only(top: 20),
                                titleStyle: TextStyle(
                                    color: const Color(0xFFc75c0c),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                                content: Form(
                                  key: formKey2,
                                  child: //Entrer le code PIN....................................
                                      Container(
                                    height: 22.h,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(.4),
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color.fromARGB(
                                                    255, 84, 84, 84)
                                                .withOpacity(.1),
                                            blurRadius: 4,
                                            spreadRadius: 1,
                                            offset: const Offset(0, 2),
                                          )
                                        ]),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                        child: Column(
                                          children: [
                                            //sizedbox
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Text(
                                              'Vous êtes sur le point de payer une facture de ${controles.text} sur le numéro ${controle.text}',
                                            ),
                                            //sizedbox
                                            SizedBox(
                                              height: 1.h,
                                            ),

                                            //veillez entrer le code PIN pour confirmer
                                            const Text(
                                              'Veillez entrer le code PIN pour confirmer',
                                              style: TextStyle(
                                                  //color: Color(0xFF007549),
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            //sizedbox
                                            SizedBox(
                                              height: 1.h,
                                            ),

                                            //Zone pour entrer le PIN
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, left: 30, right: 30),
                                              child: TextFormField(
                                                //style: const TextStyle(color: Color(0xFF007549),),
                                                cursorColor:
                                                    const Color(0xFFc75c0c),
                                                controller: control,
                                                //cursorColor: Theme.of(context).primaryColor,
                                                keyboardType:
                                                    TextInputType.phone,
                                                decoration:
                                                    const InputDecoration(
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFc75c0c),
                                                    ),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0xFFc75c0c),
                                                    ),
                                                  ),
                                                  labelStyle: TextStyle(
                                                    color: Color(0xFFc75c0c),
                                                  ),

                                                  errorBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                    color: Color(0xFF007549),
                                                  )),
                                                  errorStyle: TextStyle(
                                                    color: Color(0xFF007549),
                                                  ),
                                                  //labelStyle: Theme.of(context).textTheme.bodyMedium,
                                                  focusColor: Color(0xFFc75c0c),
                                                  border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                    width: 3,
                                                    color: Color(0xFFc75c0c),
                                                  )),
                                                  labelText:
                                                      'Entrez votre code PIN',
                                                ),
                                                validator: (value) {
                                                  if (value!.isEmpty ||
                                                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                                          .hasMatch(value)) {
                                                    return 'Veuillez entrer un code correct';
                                                  } else {
                                                    return null;
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                onConfirm: () {
                                  if (formKey2.currentState!.validate()) {
                                    Get.back();
                                    //boite de dialogue pour le message de fin d'envoi...........................
                                    Get.defaultDialog(
                                      buttonColor: const Color(0xFF007549),
                                      backgroundColor: const Color(0xFFf7efe4),
                                      confirmTextColor: Colors.white,
                                      textConfirm: "OK",
                                      title: 'Félicitations',
                                      titlePadding:
                                          const EdgeInsets.only(top: 20),
                                      titleStyle: TextStyle(
                                          color: Color(0xFFc75c0c),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp),
                                      middleText:
                                          'Vous venez d\'éffectuer un paiement d\'une facture d\'un montant de ${controles.text} à partir de votre compte mobile ${controle.text} ',
                                      onConfirm: () {
                                        Get.back();
                                      },
                                    );
                                  }
                                },
                              );
                            }
                          },
                          child: Container(
                            height: 4.h,
                            width: 25.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF007549),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF007549)
                                          .withOpacity(.255),
                                      blurRadius: 3,
                                      spreadRadius: 3,
                                      offset: const Offset(0, 2))
                                ]),
                            child: const Text(
                              'Valider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //sizedbox
                    SizedBox(
                      height: 4.h,
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  }
}

// Widget payer_facture(){
//   return const Center(child: Text('payer_facture'),);
// }