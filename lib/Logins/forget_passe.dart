import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'otp.dart';

class Forget_passe extends StatefulWidget {
  const Forget_passe({super.key});

  @override
  State<Forget_passe> createState() => _Forget_passeState();
}

class _Forget_passeState extends State<Forget_passe> {
  final formKey3 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey3,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 110,
                  ),
                  const Text(
                    'Mot de passe oublié ',
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 126, 59),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      //color: Color.fromARGB(255, 0, 0, 0)
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Veuillez saisir votre numero de téléphone ou votre adresse email',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffFB5606),
                    ),
                  ),
              
                  //sizebox
                const SizedBox(
                  height: 40,
                ),
              
                  //renseigner le numero ou mot de passe
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                            suffixIconColor: const Color(0xffFB5606),
                            errorBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffFB5606))),
                            errorStyle: const TextStyle(color: Color(0xffFB5606)),
                        labelStyle: Theme.of(context).textTheme.bodyMedium,
                              focusColor: Theme.of(context).primaryColor,
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor,)
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Theme.of(context).primaryColor,)
                              ),
                        labelText: 'Entrez votre numero de téléphone / votre email',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Veuillez renseigner des informations correctes';
                        } else if (!RegExp(
                                    r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\S\./0-9]+$')
                                .hasMatch(value) &&
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)[\w-]{2,4}$')
                                .hasMatch(value)) {
                          return 'Veuillez renseigner un numéro / adresse email valide';
                        }
                        return null;
                      },
                    ),
                  ),
              
                  //sizebox
                const SizedBox(
                  height: 60,
                ),
              
                //bouton continuer
                InkWell(
                  onTap: () {
                    if (formKey3.currentState!.validate()) {
                      Get.to(() => const Otp(),
                          transition: Transition.fade,
                          duration: const Duration(seconds: 1));
                    }
                  },
                  child: Container(
                    height: 42,
                    width: screen_width * .88,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 1, 126, 59),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 1, 126, 59).withOpacity(.2),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                            spreadRadius: 4,
                          )
                        ]),
                    child: const Text(
                      'Continue',
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
      ),
    );
  }
}
