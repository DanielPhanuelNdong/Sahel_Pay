import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:get/get.dart';

class mes_informations extends StatefulWidget {
  const mes_informations({super.key});

  @override
  State<mes_informations> createState() => _mes_informationsState();
}

class _mes_informationsState extends State<mes_informations> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nom_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Mes informations',
            style: TextStyle(
                color: Color(0xFFc75c0c),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFFc75c0c).withOpacity(.5), width: 2),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text('Nom :'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Prénom :'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Civilité :'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Sexe :'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Numéro de téléphone :'),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Forfait :'),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Bounce(
            duration: const Duration(milliseconds: 500),
            onPressed: () {
              Get.defaultDialog(
                title: 'Les informations sur le bénéficiaire',
                titleStyle: const TextStyle(
                    color: Color(0xFFc75c0c),
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
                    titlePadding: const EdgeInsets.only(top: 30),
                    textConfirm: 'Valider',
                    textCancel: 'Annuler',
                    buttonColor: const Color(0xFFc75c0c),
                content: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),

                      //Nom complet
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: nom_controller,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            suffixIconColor: const Color(0xFFc75c0c),
                            errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFFc75c0c),
                            )),
                            errorStyle: const TextStyle(
                              color: Color(0xFFc75c0c),
                            ),
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            focusColor: Theme.of(context).primaryColor,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            )),
                            labelText: 'Nom du bénéficiaire',
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              return 'Entrer un Nom correct';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),

                      //Numéro de téléphone
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          controller: phone_controller,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            suffixIconColor: const Color(0xFFc75c0c),
                            errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                              color: Color(0xFFc75c0c),
                            )),
                            errorStyle: const TextStyle(
                              color: Color(0xFFc75c0c),
                            ),
                            labelStyle: Theme.of(context).textTheme.bodyMedium,
                            focusColor: Theme.of(context).primaryColor,
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                            )),
                            labelText: 'Numéro de téléphone',
                          ),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                              return 'Entrer un Numéro correct';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),

                      const SizedBox(
                        height: 30,
                      ),


                      // Bounce(
                      //   duration: const Duration(milliseconds: 500),
                      //   onPressed: () {},
                      //   child: Container(
                      //     height: 35,
                      //     width: 350,
                      //     decoration: const BoxDecoration(
                      //         color: Color(0xFFff7900),
                      //         //borderRadius: BorderRadius.all(Radius.circular(30))
                      //             ),
                      //     alignment: Alignment.center,
                      //     child: const Text(
                      //       textAlign: TextAlign.center,
                      //       'Valider',
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.bold,
                      //           color: Color.fromARGB(255, 255, 255, 255),
                      //           fontSize: 20),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              );
            },
            child: Container(
              height: 35,
              width: 400,
              decoration: const BoxDecoration(
                color: Color(0xFFff7900),
                //borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              alignment: Alignment.center,
              child: const Text(
                textAlign: TextAlign.center,
                'Mon Bénéficiaire',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
