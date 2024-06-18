import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sahel_pay/Logins/sign_in.dart';
import 'package:sahel_pay/Logins/sign_up/index.dart';

class sign_up_suivant extends StatefulWidget {
  const sign_up_suivant({super.key});

  @override
  State<sign_up_suivant> createState() => _sign_up_suivantState();
}

class _sign_up_suivantState extends State<sign_up_suivant> {
  final formkey = GlobalKey<FormState>();
  TextEditingController date_controller = TextEditingController();
  TextEditingController lieu_controller = TextEditingController();
  TextEditingController ville_controller = TextEditingController();
  TextEditingController adresse_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 70,
              ),
              //Date de naissance
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: date_controller,
                  keyboardType: TextInputType.datetime,
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
                    labelText: 'Date de naissance',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Entrer une date de naissance correcte';
                    } else {
                      return null;
                    }
                  },
                  onTap: () async {
                    DateTime? piked_date = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1950),
                        lastDate: DateTime(2100));
                    
                    if (piked_date != null) {
                      setState(() {
                        date_controller.text =
                            DateFormat('dd-MM-yyyy').format(piked_date);
                      });
                    }
                  },
                ),
              ),
                    
              const SizedBox(
                height: 20,
              ),
                    
              //lieu de naissance
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: lieu_controller,
                  //keyboardType: TextInputType.datetime,
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
                    labelText: 'lieu de naissance',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Entrer un lieu de naissance correct';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
                    
              const SizedBox(
                height: 20,
              ),
                    
              //Ville de residence
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: ville_controller,
                  //keyboardType: TextInputType.datetime,
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
                    labelText: 'Ville de résidence',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Entrer une ville de résidence correcte';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
                    
              const SizedBox(
                height: 20,
              ),
                    
              //Adresse
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: adresse_controller,
                  //keyboardType: TextInputType.datetime,
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
                    labelText: 'Adresse',
                  ),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return 'Entrer une Adresse correcte';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
                    
              const SizedBox(
                height: 20,
              ),
                    
              //bouton suivant
              InkWell(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    Get.to(() => const sign_up_suivant2());
                  }
                },
                child: Container(
                  height: 42,
                  width: MediaQuery.of(context).size.width * .88,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xFF007549),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF007549),
                          blurRadius: 2,
                          offset: Offset(0, 4),
                          spreadRadius: 1,
                        )
                      ]),
                  child: const Text(
                    'Suivant',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ),
              ),
                    
              const SizedBox(
                height: 5,
              ),
                    
              //se connecter
              Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Vous avez un compte ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.offAll(() => const Sign_in());
                        },
                        child: const Text(
                          'Se connecter',
                          style: TextStyle(
                            color: Color(0xFFc75c0c),
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
