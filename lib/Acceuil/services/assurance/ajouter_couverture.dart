import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';

// ignore: camel_case_types
class ajouter_couverture extends StatefulWidget {
  const ajouter_couverture({super.key});

  @override
  State<ajouter_couverture> createState() => _ajouter_couvertureState();
}

class _ajouter_couvertureState extends State<ajouter_couverture> {
  final formkey = GlobalKey<FormState>();
  TextEditingController nom_controller = TextEditingController();
  TextEditingController phone_controller = TextEditingController();
  String? dropdowValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height * .70,
            width: MediaQuery.of(context).size.width * .98,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    color: const Color(0xFFc75c0c).withOpacity(.5), width: 2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10,
                      spreadRadius: 3,
                      offset: const Offset(2, 2))
                ]),
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Veuillez entrer  les informations sur vos proches',
                    style: TextStyle(
                        color: Color(0xFFc75c0c),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  
                  const SizedBox(
                    height: 30,
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
                        labelText: 'Nom complet',
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
      
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DropdownButtonFormField(
                        hint: Text(
                          'Sélectionnez le forfait',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        disabledHint: const Text(''),
                        value: dropdowValue,
                        items: const [
                          DropdownMenuItem(
                              value: 'Monthlycover', child: Text("Monthlycover")),
                          DropdownMenuItem(
                              value: 'Prepaidcover',
                              child: Text("Prepaidcover")),
                        ],
                        onChanged: (String? newvalue) {
                          setState(() {
                            dropdowValue = newvalue;
                          });
                        },
                        validator: (String? value) {
                          if (value != 'Monthlycover' &&
                              value != 'Prepaidcover') {
                            return 'Veuillez sélectionnez le forfait';
                          } else {
                            return null;
                          }
                        },
                      )),
                  
                  const SizedBox(
                    height: 80,
                  ),
      
                  Bounce(
                    duration: const Duration(milliseconds: 500),
                    onPressed: () {},
                    child: Container(
                      height: 35,
                      width: 350,
                      decoration: const BoxDecoration(
                          color: Color(0xFFff7900),
                          //borderRadius: BorderRadius.all(Radius.circular(30))
                              ),
                      alignment: Alignment.center,
                      child: const Text(
                        textAlign: TextAlign.center,
                        'Valider',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}