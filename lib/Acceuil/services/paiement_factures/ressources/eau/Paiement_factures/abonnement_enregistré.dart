import 'package:flutter/material.dart';
import 'package:get/get.dart';

//ignore: non_constant_identifier_names
Future abonnement_enregistre(context) async {
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
                    //Payer une référence abonnement enregistrée.......
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Payer une référence abonnement enregistrée',
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
                height: 30,
              ),

              //liste des references
              const Text(
                        'Liste des références abonnement enregistrée',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xFF007549),
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
            ],
          ),
        ),
      ),
    ),
  ));
}
