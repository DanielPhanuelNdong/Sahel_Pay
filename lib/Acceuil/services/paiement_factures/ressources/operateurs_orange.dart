import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

//ignore: non_constant_identifier_names
Future operater_orange(context) async {
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    //logo de canal+..........
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                            height: 130, width: 130, 'images/orange2.png')),

                    //sizedbox
                    const SizedBox(
                      height: 20,
                    ),

                    //Bienvenu sur le service Canal+.......
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Bienvenu sur Orange',
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

              Column(
                children: [
                  //FTTH/FTTO.......................
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {},
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
                        textAlign: TextAlign.center,
                        'FTTH/FTTO',
                        style: TextStyle(
                            color: Color.fromARGB(255, 249, 210, 179),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //Modem.......................
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {},
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
                        textAlign: TextAlign.center,
                        'Modem',
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
