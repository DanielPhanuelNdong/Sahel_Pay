import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Logins/sign_up/sign_up_suivant.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';

import '../../features/bloc/presentation/bloc/bloc_bloc.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  final formKey2 = GlobalKey<FormState>();
  final TextEditingController Passe_Controller = TextEditingController();
  final TextEditingController Confirm_Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    //IconData vise = Icons.visibility_off_outlined;
    //bool _obscure = true;
    //bool value_ = true;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
              key: formKey2,
              child: Center(
                child: Column(
                  children: [
                    //entête
                    //Image.asset('images/SahelPay.png'),

                    //Sizedboxe
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const Text(
                    //   'Bienvenue',
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     fontWeight: FontWeight.bold,
                    //     //color: Color.fromARGB(255, 0, 0, 0)
                    //   ),
                    // ),

                    //Sizedboxe
                    const SizedBox(
                      height: 18,
                    ),

                    const Text(
                      'veuillez vous inscrire',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFc75c0c),),
                    ),

                    //Sizedboxe
                    const SizedBox(
                      height: 20,
                    ),

                    //Nom et Prenom
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color: Color(0xFFc75c0c),),
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
                          labelText: 'Entrez votre nom et prenom',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Entrer un nom et prenom corrects';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //telephone
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color: Color(0xFFc75c0c),),
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
                          labelText: 'Entrez votre numéro de téléphone',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                  .hasMatch(value)) {
                            return 'Entrer un numéro correct';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //code PIN
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color: Color(0xFFc75c0c),),
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
                          labelText: 'Entrez votre code PIN',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'Entrer un PIN correct';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //Connexion par email
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardAppearance: Brightness.dark,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color: Color(0xFFc75c0c),),
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
                          labelText: 'Entrez votre adresse email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$')
                                  .hasMatch(value)) {
                            return 'Entrer une adresse email correcte';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //Mot de passe
                    BlocBuilder<BlocBloc, Visibility_passe_state>(
                      builder: (context, state) {
                        return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        keyboardAppearance: Brightness.dark,
                        controller: Passe_Controller,
                        cursorColor: Theme.of(context).primaryColor,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: state.obscure,
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color:Color(0xFFc75c0c),),
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
                          labelText: 'Entrez votre mot Passe',
                          suffixIcon: IconButton(
                            onPressed: () {
                              context.read<BlocBloc>().add(Visibility_passe(vise: state.vise, obscure: state.obscure));
                            },
                            icon: Icon(state.vise),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z 0-9]{4,8}$')
                                  .hasMatch(value)) {
                            return 'Entrez un mot de passe correct';
                          } else {
                            return null;
                          }
                        },
                      ),
                    );
                      },
                      ),

                    //sizebox
                    const SizedBox(
                      height: 20,
                    ),

                    //confirmation du mot de passe
                    BlocBuilder<BlocBloc, Visibility_passe_state>(
                      builder: (context, state) {
                        return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        controller: Confirm_Controller,
                        cursorColor: Theme.of(context).primaryColor,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: state.obscure,
                        decoration: InputDecoration(
                          suffixIconColor: const Color(0xFFc75c0c),
                          errorBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                          errorStyle: const TextStyle(color:Color(0xFFc75c0c),),
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
                          labelText: 'Confirmer votre mot de passe',
                          suffixIcon: IconButton(
                            onPressed: () {
                              context.read<BlocBloc>().add(Visibility_passe(vise: state.vise, obscure: state.obscure));
                            },
                            icon: Icon(state.vise),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z 0-9]{4,8}$')
                                  .hasMatch(value)) {
                            return 'veuillez confirmer le mot de passe';
                          } else if (value != Passe_Controller.text) {
                            return 'le mot de passe ne correspond pas';
                          } else {
                            return null;
                          }
                        },
                      ),
                    );
                      },
                      ),

                    //sizebox
                    const SizedBox(
                      height: 40,
                    ),

                    //bouton suivant
                    InkWell(
                      onTap: () {
                        if (formKey2.currentState!.validate()) {
                          Get.to(() => const sign_up_suivant() );
                        }
                      },
                      child: Container(
                        height: 42,
                        width: screen_width * .88,
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
                                Get.back();
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
              )),
        ),
      ),
    );
  }
}
