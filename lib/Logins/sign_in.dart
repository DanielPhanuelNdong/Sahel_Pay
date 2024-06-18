import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:sahel_pay/Acceuil/accueill.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_bloc.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_event.dart';
import 'package:sahel_pay/features/bloc/presentation/bloc/bloc_state.dart';

import 'forget_passe.dart';
import 'sign_up/sign_up.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //final formKey = GlobalKey<FormState>();
    //IconData vise = Icons.visibility_off;
    //bool _obscure = true;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Sizedboxe
                const SizedBox(
                  height: 50,
                ),
                //entête
                Image.asset('images/SahelPay.png'),
          
                //Sizedboxe
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Bienvenue',
                  style: TextStyle(
                    color: Color(0xFF007549),
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    //color: Color.fromARGB(255, 0, 0, 0)
                  ),
                ),
          
                //Sizedboxe
                const SizedBox(
                  height: 18,
                ),
          
                const Text(
                  'veuillez vous connecter',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                      color:Color(0xFFc75c0c),),
                ),
          
                //Sizedboxe
                const SizedBox(
                  height: 20,
                ),
          
                //Connexion par email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      suffixIconColor: const Color(0xFFc75c0c),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFc75c0c),)),
                      errorStyle: const TextStyle(color: Color(0xFFc75c0c),),
                      labelStyle: Theme.of(context).textTheme.bodyMedium,
                      focusColor: const Color(0xFF007549),
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
                        return 'Entrer une email correct';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
          
                //Sizedboxe
                const SizedBox(
                  height: 30,
                ),
          
                //authentification par mot de passe
                BlocBuilder<BlocBloc, Visibility_passe_state>(
                  builder: (context, state) {
                    return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
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
                      labelText: 'Entrez votre mot de Passe',
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
                        return 'Entrer un mot de passe correct';
                      } else {
                        return null;
                      }
                    },
                  ),
                );
                  },
                  ),
          
                //Sizedboxe
                const SizedBox(
                  height: 15,
                ),
          
                //Mot de passe oublié
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.to(
                            () => const Forget_passe(),
                            duration: const Duration(milliseconds: 400),
                            fullscreenDialog: true,
                          );
                        },
                        child: const Text(
                          'Mot de passe oublié ?',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFc75c0c),),
                        )),
                    Container(
                        width: 215,
                        child: BlocBuilder<BlocBloc2, se_souvenir_state>(
                          builder: (context, state) {
                            return CheckboxListTile(
                          title: const Text(
                            'Se sourvenir de moi',
                            style: TextStyle(fontSize: 12),
                          ),
                          activeColor: const Color(0xFFc75c0c),
                          value: state.value,
                          onChanged: (value) {
                            context.read<BlocBloc2>().add(se_souvenir(value: state.value));
                          },
                        );
                          },
                          )
                        ),
                  ],
                ),
          
                //Sizedboxe
                const SizedBox(
                  height: 15,
                ),
          
                //bouton de connexion
                InkWell(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Get.offAll(() => const Acceuil());
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
                      'Connexion',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                  ),
                ),
          
                //Sizedboxe
                const SizedBox(
                  height: 10,
                ),
          
                //s'inscrire
                Padding(
                  padding: const EdgeInsets.only(right: 70),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Vous n\'avez pas de compte ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(
                            () => const Sign_up(),
                            //transition: Transition.leftToRight,
                            duration: const Duration(milliseconds: 400),
                            fullscreenDialog: true,
                          );
                        },
                        child: const Text(
                          'S\'inscrire',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:Color(0xFFc75c0c),),
                        ),
                      ),
                    ],
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
