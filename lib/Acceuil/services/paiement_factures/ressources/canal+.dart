import 'package:flutter/material.dart';
import 'package:get/get.dart';

//ignore: non_constant_identifier_names
Future canal(context) async {
  //boite de dialogue pour entrer le numero et le montant............................................
  return await Get.bottomSheet(SingleChildScrollView(
    child: ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(40.0)),
      child: Container(
        height: 600,
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
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    //logo de camwater..........
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/canal+2.png')),
                    //sizedbox
                    const SizedBox(
                      height: 20,
                    ),
                    //Bienvenu sur le service Camwater.......
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Bienvenu sur canal+ ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF007549),
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
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
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          'Reconduire mon abonnement actuel',
                          style: TextStyle(
                              color: Color.fromARGB(255, 168, 2, 57),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          'Changer d\'offre',
                          style: TextStyle(
                              color: Color.fromARGB(255, 168, 2, 57),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          'Gerer ma liste de numéros de réabonnement',
                          style: TextStyle(
                              color: Color.fromARGB(255, 168, 2, 57),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        height: 40,
                        width: 310,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Text(
                          'Consulter / Régulariser mon solde impayé',
                          style: TextStyle(
                              color: Color.fromARGB(255, 168, 2, 57),
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ));
}
