import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Logins/index.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';

import '../features/bloc/presentation/bloc/bloc_bloc.dart';

//import 'sign_in.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _nameState();
}

class _nameState extends State<Reset> {
  final formKey4 = GlobalKey<FormState>();
  IconData vise = Icons.visibility_off;
  //bool _obscure = true;
  TextEditingController PassewordController = TextEditingController();
  TextEditingController ConfirmPassewordControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey4,
          child: Center(
            child: Column(
              children: [
                //sizebox
                const SizedBox(
                  height: 120,
                ),
                //texte mot de passe oublié
                const Text(
                  textAlign: TextAlign.center,
                  'Réinitialisation du mot de passe',
                  style: TextStyle(
                    color: Color(0xFF007549),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    //color: Color.fromARGB(255, 0, 0, 0)
                  ),
                ),

                //sizebox
                const SizedBox(
                  height: 20,
                ),

                // texte entrer les informations
                const Text(
                  'Veuillez renseigner et confirmer le nouveau mot de passe',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFc75c0c),
                  ),
                ),

                //sizebox
                const SizedBox(
                  height: 20,
                ),

                //Entrer votre nouveau mot de passe
                BlocBuilder<BlocBloc, Visibility_passe_state>(
                  builder: (context, state) {
                    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    controller: PassewordController,
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: state.obscure,
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
                      labelText: 'Entrez votre Passe entre 4 et 8 caractères',
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<BlocBloc>().add(Visibility_passe(vise: state.vise, obscure: state.obscure));
                        },
                        icon: Icon(state.vise),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z 0-9]{4,8}$').hasMatch(value)) {
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
                    controller: ConfirmPassewordControler,
                    cursorColor: Theme.of(context).primaryColor,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: state.obscure,
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
                      labelText: 'Confirmez votre mot de passe',
                      suffixIcon: IconButton(
                        onPressed: () {
                          context.read<BlocBloc>().add(Visibility_passe(vise: state.vise, obscure: state.obscure));
                        },
                        icon: Icon(state.vise),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-z A-Z 0-9]{4,8}$').hasMatch(value)) {
                        return 'Entrez un mot de passe correct';
                      } else if (value != PassewordController.text) {
                        return 'mot de passe différent';
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

                //bouton Enrégistrer
                InkWell(
                  onTap: () {
                    if (formKey4.currentState!.validate()) {
                      Get.defaultDialog(
                        title: "Confirmation",
                        titleStyle: const TextStyle(
                          color: Color(0xFF007549),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        middleText:
                            'Voulez-vous vraiment modifier votre mot de passe ?',
                        middleTextStyle: const TextStyle(
                          color: Color(0xFFc75c0c),
                        ),
                        textCancel: 'Non',
                        //cancelTextColor: const Color.fromARGB(255, 1, 126, 59),
                        textConfirm: 'Oui',
                        //confirmTextColor: const Color.fromARGB(255, 1, 126, 59),
                        buttonColor: const Color(0xFF007549),

                        onConfirm: () {
                          Get.snackbar(
                            'Succès',
                              'modification éffectuée avec succès !!',
                              snackPosition: SnackPosition.BOTTOM
                              );
                          Get.offAll(() => const Sign_in(),
                              //transition: Transition.fade,
                              duration: const Duration(seconds: 1));
                        },
                      );
                    }
                  },
                  child: Container(
                    height: 42,
                    width: 300,
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
                      'Enrégistrer',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
