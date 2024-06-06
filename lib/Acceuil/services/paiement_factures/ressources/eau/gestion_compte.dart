import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';
//ignore: non_constant_identifier_names
Future Gestion_compte(context) async {
  //boite de dialogue pour entrer le numero et le montant............................................
  return await Get.bottomSheet(SingleChildScrollView(
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
      child: Container(
        height: 400,
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

              Padding(
                padding: const EdgeInsets.only(top: 1),
                child: Column(
                  children: [
                    //logo de camwater..........
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            height: 130, width: 130, 'images/camwater2.png')),
                    //Bienvenu sur le service Camwater.......
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Gestion compte CAMWATER',
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
                        'Ajout',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
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
                        'Modification',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),

                  
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {
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
                        'Suppression',
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
