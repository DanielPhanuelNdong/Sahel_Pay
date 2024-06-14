import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

import 'numero_marchand.dart';

TextEditingController controless = TextEditingController();
TextEditingController controleso = TextEditingController();
TextEditingController controlo = TextEditingController();
//String control2 = controle.text;
final formKey1 = GlobalKey<FormState>();
final formKey11 = GlobalKey<FormState>();
final List<String> mode_transferts = ['Agent ', 'SOWITEL Gab'];

String current_options = "";

//possibilité de scanner...............................
void QRCodeScans() async {
  String QRCode;
  try {
    QRCode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666", // Scan line color
        "Cancel", // Cancel button text
        true, // Whether to use the rear camera
        ScanMode.QR);
  } on PlatformException {
    QRCode = 'Echec PlatformException';
  }

  //si la valeur de scan est differente de 0, on affiche la boite de dialog.........
  if (QRCode != 0) {
    Apres_scan();
  }
}

//ignore: non_constant_identifier_names
Future Paiement_marchands(context) async {
  //boite de dialogue pour entrer le numero et le montant............................................
  return await Get.bottomSheet(SingleChildScrollView(
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
      child: Container(
        height: 250,
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
              const SizedBox(
                height: 30,
              ),

              const Padding(
                padding: EdgeInsets.only(top: 1),
                child: Column(
                  children: [
                    //Paiement marchand.......
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Paiement marchand',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFFc75c0c),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),

              //sizedbox
              const SizedBox(
                height: 20,
              ),

              Column(
                children: [
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
                      Get.back();
                      numero_marchand(context);
                    },
                    child: Container(
                      height: 40,
                      width: 310,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'Entrez numéro marchand',
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
                      QRCodeScans();
                    },
                    child: Container(
                      height: 40,
                      width: 310,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: const Color(0xFF007549),
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30))),
                      child: const Text(
                        'Scanner QR',
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



    
  Future Apres_scan() async {
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
                key: formKey1,
                child: Column(
                  children: [
                    //sizedbox
                    const SizedBox(
                      height: 30,
                    ),

                    // Entrer les informations necessaires
                    const Text(
                      textAlign: TextAlign.center,
                      'Veillez entrer les informations\n nécessaires',
                      style: TextStyle(
                          color: Color(0xFF007549),
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),

                    //sizebox
                      const SizedBox(
                        height: 20,
                      ),

                    Container(
                      height: 116,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.8),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(.1),
                            blurRadius: 4,
                            spreadRadius: 3,
                            offset: const Offset(0, 2)
                          )
                        ]
                      ),
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                            children: [
                              //sizebox
                          const SizedBox(
                            height: 10,
                          ),
                          
                          //Entrer le montant
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 10, left: 30, right: 30),
                            child: TextFormField(
                              //style: const TextStyle(color: Color(0xFFc75c0c),),
                              controller: controless,
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
                                    !RegExp(r'^[0-9]{4,10}$').hasMatch(value)) {
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
                    const SizedBox(
                      height: 20,
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
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xFF007549)),
                              color: Colors.white,
                            ),
                            child: const Text(
                              'Annuler',
                              style: TextStyle(
                                  color: Color(0xFF007549),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),

                        //bouton valider..................................
                        InkWell(
                          onTap: () {
                            if (formKey1.currentState!.validate()) {
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
                                titleStyle: const TextStyle(
                                    color: Color(0xFFc75c0c),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                content: Form(
                                  key: formKey11,
                                  child: //Entrer le code PIN....................................
                                      Container(
                                    height: 250,
                                    width: 500,
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
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              'Vous êtes sur le point d\'éffecrtuer un paiement marchand de ${controless.text} ',
                                              
                                            ),
                                            //sizedbox
                                            const SizedBox(
                                              height: 10,
                                            ),

                                            //veillez entrer le code PIN pour confirmer
                                            const Text(
                                              'Veillez entrer le code PIN pour confirmer',
                                              style: TextStyle(
                                                  //color: Color(0xFF007549),
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            //sizedbox
                                            const SizedBox(
                                              height: 10,
                                            ),

                                            //Zone pour entrer le PIN
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, left: 30, right: 30),
                                              child: TextFormField(
                                                //style: const TextStyle(color: Color(0xFF007549),),
                                                cursorColor:
                                                    const Color(0xFFc75c0c),
                                                controller: controlo,
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
                                  if (formKey11.currentState!.validate()) {
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
                                      titleStyle: const TextStyle(
                                          color: Color(0xFFc75c0c),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                      middleText:
                                          'Vous venez d\'éffectuer un paiement marchand d\'un montant de ${controless.text}',
                                      onConfirm: () {
                                        Get.back();
                                        //afficharge du rapport de retrait effectué
                                        // BlocBuilder<BlocBloc3, Barre_navigation_satate>(
                                        //   builder: (context, state) {
                                        //     return Container();
                                        //   },
                                        // );
                                      },
                                    );
                                  }
                                },
                              );
                            
                              }
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF007549),
                                boxShadow: [
                                  BoxShadow(
                                      color: const Color(0xFF007549).withOpacity(.255),
                                      blurRadius: 3,
                                      spreadRadius: 3,
                                      offset: const Offset(0, 2))
                                ]),
                            child: const Text(
                              'Valider',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //sizedbox
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                )),
          ),
        ),
      ),
    ));
  
  
  }
