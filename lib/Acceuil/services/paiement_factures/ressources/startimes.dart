import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

//ignore: non_constant_identifier_names
Future startimes(context) async {
  //boite de dialogue pour entrer le numero et le montant............................................
  return await Get.bottomSheet(SingleChildScrollView(
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
      child: Container(
        height: 370,
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
                Padding(
                  padding: const EdgeInsets.only(top: 1),
                  child: Column(
                    children: [
                      //logo de startimes..........
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                              height: 130,
                              width: 130,
                              'images/startimes2.png')),

                      //Bienvenu sur le service Startimes......
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Bienvenu sur Startimes',
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
                  height: 10,
                ),

                Column(
                  children: [
                    //Reconduire mon abonement actuel.......................
                    Bounce(
                      duration: const Duration(milliseconds: 500),
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 32, 176, 121),
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Reconduire mon abonement actuel',
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 210, 179),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //Changer d\'offre.......................
                    Bounce(
                      duration: const Duration(milliseconds: 500),
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 32, 176, 121),
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Changer d\'offre',
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 210, 179),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //Changer d\'offre.......................
                    Bounce(
                      duration: const Duration(milliseconds: 500),
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 32, 176, 121),
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Gérer ma liste de numéro de réabonnement',
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 210, 179),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    //Changer d\'offre.......................
                    Bounce(
                      duration: const Duration(milliseconds: 500),
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 32, 176, 121),
                            border: Border.all(color: Colors.white, width: 3),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          textAlign: TextAlign.center,
                          'Consulter / Régulariser mon solde impayé',
                          style: TextStyle(
                              color: Color.fromARGB(255, 249, 210, 179),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    //sizedbox
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}
