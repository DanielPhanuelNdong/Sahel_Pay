import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

// ignore: non_constant_identifier_names
Future envoi_banque(context) async {
  
  TextEditingController controle = TextEditingController();
  TextEditingController controles = TextEditingController();
  TextEditingController control = TextEditingController();
  //String control2 = controle.text;
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
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
                          fontSize: 14.sp),
                    ),

                    //sizebox
                    SizedBox(
                      height: 2.h,
                    ),

                    Container(
                      height: 25.h,
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
                                padding: EdgeInsets.only(
                                    top: 3.h, left: 9.w, right: 9.w),
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
                                    labelText: 'Numéro de compte banquaire',
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
                                padding: EdgeInsets.only(
                                    top: 1.h, left: 9.w, right: 9.w),
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
                            width: 40.w,
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
                                  color: Color(0xFF007549),
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
                                title: 'Confirmation d\'envoi',
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
                                              'Vous êtes sur le point d\'éffecrtuer un envoi de ${controles.text} via le numéro ${controle.text}',
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
                                              padding: EdgeInsets.only(
                                                  top: 2.h, left: 8.w, right: 8.w),
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
                                          EdgeInsets.only(top: 2.h),
                                      titleStyle: TextStyle(
                                          color: const Color(0xFFc75c0c),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp),
                                      middleText:
                                          'Vous venez d\'éffectuer un envoi d\'un montant de ${controles.text} de votre compte Sahel Money vers votre compte mobile ${controle.text} ',
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
                            width: 40.w,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF007549),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF007549)
                                          .withOpacity(.255),
                                      blurRadius: 3,
                                      spreadRadius: 3,
                                      offset: const Offset(0, 2))
                                ]),
                            child: Text(
                              'Valider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
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